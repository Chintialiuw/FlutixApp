// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types

import 'package:flutixapp/auth/auth.dart';
import 'package:flutixapp/ui/pages/splash_screen/sign_up.dart';
import 'package:flutixapp/ui/widgets/bottomnav.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class signIn extends StatefulWidget {
  const signIn({super.key});

  @override
  State<signIn> createState() => _signInState();
}

class _signInState extends State<signIn> {
  bool _loading = false;

  final _formKey = GlobalKey<FormState>();

  final TextEditingController _ctrlEmail = TextEditingController();
  final TextEditingController _ctrlPassword = TextEditingController();

  handleSubmit() async {
    if (_formKey.currentState!.validate()) {
      final email = _ctrlEmail.value.text;
      final password = _ctrlPassword.value.text;

      setState(() => _loading = true);

      try {
        await Auth().login(email, password);
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => BottomNav()),
        );
      } catch (error) {
        print('Error during login: $error');

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Login failed. Please try again.'),
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
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40, left: 20),
                    child: Text(
                      "Welcome back,",
                      style: GoogleFonts.raleway(
                          fontSize: 26,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 60.0, top: 60.0, right: 20.0),
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/splash/logo-black.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Explorer!",
                  style: GoogleFonts.raleway(
                      fontSize: 26,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 80, left: 20, right: 20),
            child: Form(
              key: _formKey,
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
                  hintText: "Insert your email address...",
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
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
            child: Form(
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
                  hintText: "*********",
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
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 85, left: 20),
                child: Text(
                  "Continue to Sign In",
                  style: GoogleFonts.raleway(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => handleSubmit(),
                child: _loading
                    ? Padding(
                        padding: const EdgeInsets.only(
                            left: 100, top: 80, right: 20),
                        child: const SizedBox(
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
                            left: 100, top: 80, right: 20),
                        child: Icon(
                          Icons.arrow_circle_right,
                          color: Color(0xFFE1A20B),
                          size: 60,
                        ),
                      ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 80, top: 80),
                child: Text(
                  "Start fresh now?",
                  style: GoogleFonts.raleway(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 17,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => signUp()));
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, top: 80, right: 20),
                  child: Text(
                    "Sign Up",
                    style: GoogleFonts.raleway(
                      color: Color(0xFFE1A20B),
                      fontWeight: FontWeight.w400,
                      fontSize: 17,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
