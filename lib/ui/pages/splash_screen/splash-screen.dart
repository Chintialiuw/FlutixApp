// ignore_for_file: camel_case_types, prefer_const_constructors, file_names

import 'package:flutixapp/ui/pages/splash_screen/sign_in.dart';
import 'package:flutixapp/ui/pages/splash_screen/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 130.0, bottom: 20),
            child: Container(
              width: 290,
              height: 220,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/splash/flutix-logo.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Text(
            "New Experience",
            style: GoogleFonts.raleway(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 28,
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Watch a new movie much easier",
            style: GoogleFonts.raleway(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
          SizedBox(height: 5),
          Text(
            "easier than any before",
            style: GoogleFonts.raleway(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
          SizedBox(height: 50),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => signIn(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFFE1A20B),
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              minimumSize: Size(250, 50),
            ),
            child: Text(
              "Get Started",
              style: GoogleFonts.raleway(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Didn't have an account?",
                style: GoogleFonts.raleway(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => signUp()));
                },
                child: Text(
                  "  Sign Up",
                  style: TextStyle(
                    color: Color(0xFFE1A20B),
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
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
