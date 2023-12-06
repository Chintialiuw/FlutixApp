import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutixapp/ui/pages/splash_screen/user_profile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class confir extends StatefulWidget {
  const confir({super.key});

  @override
  State<confir> createState() => _confirState();
}

class _confirState extends State<confir> {
  String username = '';
  String email = '';
  String profilePictureUrl = '';

  @override
  void initState() {
    super.initState();
    loadProfile(); // Load profile information when the page is loaded
  }

  Future<void> loadProfile() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      username = prefs.getString('nama') ?? "";
      email = prefs.getString('email') ?? "";
      profilePictureUrl = prefs.getString('profilePictureUrl') ?? "";
    });
  }
  

  ImageProvider<Object>? _getImageProvider() {
    if (profilePictureUrl.isNotEmpty) {
      return NetworkImage(profilePictureUrl);
    } else {
      return const AssetImage("assets/images/card/profile.png");
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
            child: const Icon(
              Icons.arrow_back_ios,
              color: Color(0xFFE1A20B),
              size: 32,
            ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 20),
            child: Text(
              "Confirm",
              style: GoogleFonts.raleway(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 20),
            child: Text(
              "New Account",
              style: GoogleFonts.raleway(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 90.0),
                  child: Container(
                    width: 130,
                    height: 130,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 20, 16, 16),
                      borderRadius: BorderRadius.circular(90),
                      image: DecorationImage(
                        image: _getImageProvider()!,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Text(
                    "Welcome,",
                    style: GoogleFonts.raleway(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    username ?? "Loading...",
                    style: GoogleFonts.raleway(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 110, left: 20, bottom: 40),
                child: Text(
                  "Yes, I am In",
                  style: GoogleFonts.raleway(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const uprof()));
                },
                child: const Padding(
                  padding: EdgeInsets.only(
                      left: 155, right: 20, top: 100, bottom: 40),
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
    );
  }
}
