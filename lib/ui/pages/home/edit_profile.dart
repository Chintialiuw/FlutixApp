// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../models/models.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final _formKey = GlobalKey<FormState>();
  bool _loading = false;

  //Profile? user;
  String username = '';
  String email = '';
  String profilePictureUrl = '';
  String oldPass = "";
  String newPass = "";

  @override
  void initState() {
    super.initState();
    loadProfile();
  }

  Future<void> loadProfile() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      username = prefs.getString('nama') ?? "";
      email = prefs.getString('email') ?? "";
      oldPass = prefs.getString('password') ?? "";
      newPass = prefs.getString(_controllerNewPass.text) ?? "";

      profilePictureUrl = prefs.getString('profilePictureUrl') ?? "";
    });
  }

  Future<String> _loadProfileImage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('profilePictureUrl') ?? "";
  }

  final TextEditingController _controllerNama = TextEditingController();
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerOldPass = TextEditingController();
  final TextEditingController _controllerNewPass = TextEditingController();

  handleSubmit() async {
    if (_formKey.currentState!.validate()) {
      final nama = _controllerNama.value.text;
      final email = _controllerEmail.value.text;
      final password = _controllerNewPass.value.text;

      setState(() => _loading = true);

      // try {
      //   // Upload profile picture
      //   final imageUrl = await _uploadImage();

      //   // Registrasi pengguna
      //   await Auth().regis(email, password, nama, imageUrl, 300000);

      //   Navigator.of(context).push(
      //     MaterialPageRoute(builder: (context) => confir()),
      //   );
      // } catch (error) {
      //   // Existing error handling code...
      // } finally {
      //   setState(() => _loading = false);
      // }
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
        title: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Text(
            "Edit Profile",
            style: GoogleFonts.raleway(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    // CircleAvatar(
                    //   radius: 50,
                    //   backgroundImage: NetworkImage(
                    //     user?.foto ?? "",
                    //   ),
                    // ),
                    FutureBuilder<String>(
                      future:
                          _loadProfileImage(), // Panggil fungsi di dalam HomePage
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return const CircularProgressIndicator(
                            color: Color(0xFFE1A20B),
                          );
                        } else if (snapshot.hasData) {
                          final profilePictureUrl = snapshot.data!;
                          return CircleAvatar(
                            radius: 50,
                            backgroundImage: profilePictureUrl.isNotEmpty
                                ? NetworkImage(profilePictureUrl)
                                    as ImageProvider<Object>?
                                : const AssetImage(
                                    "assets/images/card/minji.jpg"),
                          );
                        } else {
                          return CircleAvatar(
                            radius: 50,
                            backgroundImage: const AssetImage(
                                "assets/images/card/minji.jpg"),
                          );
                        }
                      },
                    ),
                    Padding(
                        padding:
                            const EdgeInsets.only(top: 40, left: 20, right: 20),
                        child: TextFormField(
                          controller: _controllerNama,
                          // validator: (value) {
                          //   if (value == null || value.isEmpty) {
                          //     return 'Insert your full name';
                          //   }
                          //   return null;
                          // },
                          decoration: InputDecoration(
                            border:
                                OutlineInputBorder(borderSide: BorderSide()),
                            labelText: "Full Name",
                            labelStyle:
                                GoogleFonts.raleway(color: Colors.black),
                            hintText: username ?? "Loading...",
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
                        )),
                    Padding(
                        padding:
                            const EdgeInsets.only(top: 30, left: 20, right: 20),
                        child: TextFormField(
                          controller: _controllerEmail,
                          // validator: (value) {
                          //   if (value == null || value.isEmpty) {
                          //     return 'Insert your email address';
                          //   }
                          //   return null;
                          // },
                          decoration: InputDecoration(
                            enabled: false,
                            border:
                                OutlineInputBorder(borderSide: BorderSide()),
                            // labelText: "Email Address",
                            // labelStyle:
                            //     GoogleFonts.raleway(color: Colors.black),
                            hintText: email ?? "Loading...",
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
                        )),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 30, left: 20, right: 20),
                      child: TextFormField(
                        controller: _controllerOldPass,
                        obscureText: true,
                        decoration: InputDecoration(
                          enabled: false,
                          border: OutlineInputBorder(borderSide: BorderSide()),
                          // labelText: "Password",
                          // labelStyle: GoogleFonts.raleway(color: Colors.black),
                          hintText: "********",
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
                    // Padding(
                    //   padding:
                    //       const EdgeInsets.only(top: 30, left: 20, right: 20),
                    //   child: TextFormField(
                    //     controller: _controllerNewPass,
                    //     obscureText: true,
                    //     decoration: InputDecoration(
                    //       border: OutlineInputBorder(borderSide: BorderSide()),
                    //       labelText: "New Password",
                    //       labelStyle: GoogleFonts.raleway(color: Colors.black),
                    //       hintText: "***********",
                    //       hintStyle: GoogleFonts.raleway(color: Colors.black),
                    //       enabledBorder: OutlineInputBorder(
                    //         borderSide: BorderSide(
                    //           color: Colors.grey,
                    //           width: 3,
                    //         ),
                    //       ),
                    //       focusedBorder: OutlineInputBorder(
                    //         borderSide: BorderSide(
                    //           color: Color(0xFFE1A20B),
                    //           width: 3,
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    Padding(
                      padding: const EdgeInsets.all(50.0),
                      child: ElevatedButton(
                        onPressed: () async {
                          // if (_controllerOldPass.text != oldPass ||
                          //     _controllerNewPass.text.isEmpty) {
                          //   print('oldPass: $oldPass');
                          //   showDialog(
                          //     context: context,
                          //     builder: (BuildContext context) {
                          //       return AlertDialog(
                          //         title: Text("Perubahan Dibatalkan"),
                          //         content: Text(
                          //             "Konfirmasi Password Lama Salah atau Password Baru Kosong!"),
                          //         actions: [
                          //           TextButton(
                          //             onPressed: () {
                          //               Navigator.of(context).pop();
                          //             },
                          //             child: Text("OK"),
                          //           ),
                          //         ],
                          //       );
                          //     },
                          //   );
                          // } else {
                          //   FirebaseFirestore firestore =
                          //       FirebaseFirestore.instance;
                          //   CollectionReference users =
                          //       firestore.collection('users');
                          //   User? user = FirebaseAuth.instance.currentUser;

                          //   //handleSubmit();
                          //   String id = FirebaseAuth.instance.currentUser!.uid;
                          //   await users.doc(id).update({
                          //     "fullName": _controllerNama.text.isEmpty
                          //         ? user!.displayName ?? ""
                          //         : _controllerNama.text.toString(),
                          //   });

                          //   await FirebaseAuth.instance.currentUser!
                          //       .updatePassword(_controllerNewPass.text);

                          //   // Tambahan: setelah perubahan berhasil, mungkin Anda ingin menampilkan pesan atau melakukan tindakan lainnya.
                          // }
                            FirebaseFirestore firestore =
                                FirebaseFirestore.instance;
                            CollectionReference users =
                                firestore.collection('users');
                            User? user = FirebaseAuth.instance.currentUser;

                            //handleSubmit();
                            String id = FirebaseAuth.instance.currentUser!.uid;
                            await users.doc(id).update({
                              "fullName": _controllerNama.text.isEmpty
                                  ? user!.displayName ?? ""
                                  : _controllerNama.text.toString(),
                            });

                            Navigator.of(context).pop();

                            // await FirebaseAuth.instance.currentUser!
                            //     .updatePassword(_controllerNewPass.text);
                        
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFE1A20B),
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          minimumSize: Size(200, 50),
                        ),
                        child: Text(
                          "Update Now",
                          style: GoogleFonts.raleway(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
