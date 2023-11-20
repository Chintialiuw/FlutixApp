import 'package:flutixapp/ui/pages/splash_screen/sign_in.dart';
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

  @override
  void initState() {
    super.initState();
    loadNama(); // Memuat nama saat halaman dimuat
  }

  Future<void> loadNama() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      username = prefs.getString('nama') ??
          ""; // Mendapatkan nama dari SharedPreferences
      email = prefs.getString('email') ??
          ""; // Mendapatkan nama dari SharedPreferences
    });
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
                      color: Color.fromARGB(255, 20, 16, 16),
                      borderRadius: BorderRadius.circular(90),
                      image: DecorationImage(
                        image: AssetImage("assets/images/card/minji.jpg"),
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
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 80, left: 20, bottom: 40),
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
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => uprof()));
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 155, right: 20, top: 100, bottom: 40),
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
