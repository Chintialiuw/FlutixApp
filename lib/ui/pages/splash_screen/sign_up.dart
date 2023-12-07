// ignore_for_file: camel_case_types, prefer_const_constructors, use_build_context_synchronously, avoid_print

import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutixapp/auth/auth.dart';
import 'package:flutixapp/ui/pages/splash_screen/confirmation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class signUp extends StatefulWidget {
  const signUp({super.key});

  @override
  State<signUp> createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  final _formKey = GlobalKey<FormState>();
  bool _loading = false;
  File? _image;

  final TextEditingController _ctrlNama = TextEditingController();
  final TextEditingController _ctrlEmail = TextEditingController();
  final TextEditingController _ctrlPassword = TextEditingController();
  final TextEditingController _ctrlConfirmPassword = TextEditingController();

  Future<void> _getImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    setState(() {
      _image = pickedFile != null ? File(pickedFile.path) : null;
    });
  }

  Future<String> _uploadImage() async {
    if (_image == null) return '';

    try {
      final FirebaseAuth auth = FirebaseAuth.instance;
      final User? user = auth.currentUser;

      final Reference storageRef = FirebaseStorage.instance.ref().child(
          'profile_pictures/${user?.uid}/${DateTime.now().millisecondsSinceEpoch}.png');

      await storageRef.putFile(_image!);
      final String downloadURL = await storageRef.getDownloadURL();

      return downloadURL;
    } catch (e) {
      print('Error uploading image: $e');
      return '';
    }
  }

  // Modify the handleSubmit method to include image uploading
  handleSubmit() async {
    if (_formKey.currentState!.validate()) {
      final nama = _ctrlNama.value.text;
      final email = _ctrlEmail.value.text;
      final password = _ctrlPassword.value.text;

      setState(() => _loading = true);

      try {
        // Upload profile picture
        final imageUrl = await _uploadImage();

        // Registrasi pengguna
        await Auth().regis(email, password, nama, imageUrl);

        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => confir()),
        );
      } catch (error) {
        // Existing error handling code...
      } finally {
        setState(() => _loading = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(top: 10.0, left: 20),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Color(0xFFE1A20B),
              size: 32,
            ),
          ),
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10),
                  child: Text(
                    "Create Your",
                    style: GoogleFonts.raleway(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10),
                  child: Text(
                    "Account",
                    style: GoogleFonts.raleway(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Stack(
                  children: [
                    Center(
                      child: GestureDetector(
                        onTap: _getImage,
                        child: Container(
                          margin: EdgeInsets.all(20),
                          width: 130,
                          height: 130,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 20, 16, 16),
                            borderRadius: BorderRadius.circular(90),
                            image: _image != null
                                ? DecorationImage(
                                    image: FileImage(_image!),
                                    fit: BoxFit.cover,
                                  )
                                : DecorationImage(
                                    image: const AssetImage(
                                        "assets/images/card/profile.png"),
                                    fit: BoxFit.cover,
                                  ),
                          ),
                        ),
                      ),
                    ),
                    _image == null
                        ? Center(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, top: 125.0, right: 20),
                              child: Icon(
                                Icons.add_circle,
                                color: Color(0xFFE1A20B),
                                size: 40,
                              ),
                            ),
                          )
                        : Center(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, top: 125.0, right: 20),
                              child: SizedBox(),
                            ),
                          ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
                  child: TextFormField(
                    controller: _ctrlNama,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Insert your full name';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide()),
                      labelText: "Full Name",
                      labelStyle: GoogleFonts.raleway(color: Colors.black),
                      hintText: "Your Full Name...",
                      hintStyle: GoogleFonts.raleway(color: Colors.black),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 3,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFE1A20B),
                          width: 3,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
                  child: TextFormField(
                    controller: _ctrlEmail,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Insert your email address';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide()),
                      labelText: "Email Address",
                      labelStyle: GoogleFonts.raleway(color: Colors.black),
                      hintText: "Your Email Address...",
                      hintStyle: GoogleFonts.raleway(color: Colors.black),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 3,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFE1A20B),
                          width: 3,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
                  child: TextFormField(
                    controller: _ctrlPassword,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Insert your password';
                      }
                      return null;
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide()),
                      labelText: "Password",
                      labelStyle: GoogleFonts.raleway(color: Colors.black),
                      hintText: "***********",
                      hintStyle: GoogleFonts.raleway(color: Colors.black),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 3,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFE1A20B),
                          width: 3,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
                  child: TextFormField(
                    controller: _ctrlConfirmPassword,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Insert your confirm password';
                      }
                      return null;
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide()),
                      labelText: "Confirm Password",
                      labelStyle: GoogleFonts.raleway(color: Colors.black),
                      hintText: "***********",
                      hintStyle: GoogleFonts.raleway(color: Colors.black),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 3,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFE1A20B),
                          width: 3,
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 40, left: 20, bottom: 40),
                      child: Text(
                        "Continue to Sign Up",
                        style: GoogleFonts.raleway(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => handleSubmit(),
                      child: _loading
                          ? Padding(
                              padding: const EdgeInsets.only(
                                  left: 70, top: 40, bottom: 40, right: 20),
                              child: SizedBox(
                                width: 20,
                                height: 20,
                                child: CircularProgressIndicator(
                                  color: Color(0xFFE1A20B),
                                  strokeWidth: 2,
                                ),
                              ),
                            )
                          : Padding(
                              padding: const EdgeInsets.only(
                                  left: 70, top: 40, bottom: 40, right: 20),
                              child: Icon(
                                Icons.arrow_circle_right,
                                color: Color(0xFFE1A20B),
                                size: 60,
                              ),
                            ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
