// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutixapp/auth/auth.dart';
import 'package:flutixapp/ui/pages/splash_screen/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class signUp extends StatefulWidget {
  signUp({super.key});

  @override
  State<signUp> createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  final _formKey = GlobalKey<FormState>();
  bool _loading = false;

  final TextEditingController _ctrlNama = TextEditingController();
  final TextEditingController _ctrlEmail = TextEditingController();
  final TextEditingController _ctrlPassword = TextEditingController();
  final TextEditingController _ctrlConfirmPassword = TextEditingController();

  handleSubmit() async {
    if (_formKey.currentState!.validate()) {
      final nama = _ctrlNama.value.text;
      final email = _ctrlEmail.value.text;
      final password = _ctrlPassword.value.text;

      setState(() => _loading = true);

      try {
        // Registrasi pengguna
        await Auth().regis(email, password, nama);

        // Registrasi berhasil, tambahkan logika setelah registrasi di sini.
        // Misalnya, pindah ke halaman lain.
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => signIn()),
        );
      } catch (error) {
        // Tangani kesalahan yang mungkin terjadi saat registrasi
        print('Error during registration: $error');

        // Tampilkan pesan kesalahan ke pengguna, misalnya, dengan menggunakan snackbar.
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Registration failed. Please try again.'),
          ),
        );
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
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10),
                  child: Text(
                    "Account",
                    style: GoogleFonts.raleway(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Stack(
                  children: [
                    Center(
                      child: Container(
                        margin: EdgeInsets.all(20),
                        width: 130,
                        height: 130,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 20, 16, 16),
                          borderRadius: BorderRadius.circular(90),
                          image: DecorationImage(
                            image: AssetImage("assets/images/card/minji.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, top: 125.0, right: 20),
                        child: Icon(
                          Icons.add_circle,
                          color: Color(0xFFE1A20B),
                          size: 40,
                        ),
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
                      hintText: "Chintia Liu Wintin",
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
                      hintText: "chintialiuw@gmail.com",
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
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 40, left: 20, bottom: 40),
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
                          ? const SizedBox(
                              width: 20,
                              height: 20,
                              child: CircularProgressIndicator(
                                color: Colors.white,
                                strokeWidth: 2,
                              ),
                            )
                          : Padding(
                              padding:
                                  const EdgeInsets.only(left: 70, top: 40, bottom: 40, right: 20),
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
