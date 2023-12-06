// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutixapp/ui/pages/home/edit_profile.dart';
import 'package:flutixapp/ui/pages/home/myWallet.dart';
import 'package:flutixapp/ui/pages/splash_screen/splash-screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({super.key});

  @override
  State<ProfilPage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilPage> {
  String username = '';
  String email = '';
  String profilePictureUrl = '';

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
      profilePictureUrl = prefs.getString('profilePictureUrl') ?? "";
    });
  }

  Future<String> _loadProfileImage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('profilePictureUrl') ?? "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
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
                    const SizedBox(height: 10),
                    Text(
                      username ?? "Loading...",
                      style: GoogleFonts.raleway(fontSize: 24),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      email ?? "Loading...",
                      style: GoogleFonts.raleway(fontSize: 16),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {}, icon: Icon(Icons.settings)),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => EditProfile()),
                              );
                            },
                            style: TextButton.styleFrom(
                                foregroundColor: Colors.black),
                            child: Text(
                              "Edit Profile",
                              style: GoogleFonts.raleway(fontSize: 16),
                            )),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(onPressed: () {}, icon: Icon(Icons.wallet)),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => myWallet()),
                              );
                            },
                            style: TextButton.styleFrom(
                                foregroundColor: Colors.black),
                            child: Text(
                              "My Wallet",
                              style: GoogleFonts.raleway(fontSize: 16),
                            )),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {}, icon: Icon(Icons.language)),
                        TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                                foregroundColor: Colors.black),
                            child: Text(
                              "Change Language",
                              style: GoogleFonts.raleway(fontSize: 16),
                            )),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {}, icon: Icon(Icons.help_center)),
                        TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                                foregroundColor: Colors.black),
                            child: Text(
                              "Help Center",
                              style: GoogleFonts.raleway(fontSize: 16),
                            )),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {}, icon: Icon(Icons.rate_review)),
                        TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                                foregroundColor: Colors.black),
                            child: Text(
                              "Rate Flutix App",
                              style: GoogleFonts.raleway(fontSize: 16),
                            )),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              FirebaseAuth.instance.signOut();
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return splash();
                                  },
                                ),
                              );
                            },
                            icon: Icon(Icons.logout)),
                        TextButton(
                            onPressed: () {
                              FirebaseAuth.instance.signOut();
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return splash();
                                  },
                                ),
                              );
                            },
                            style: TextButton.styleFrom(
                                foregroundColor: Colors.black),
                            child: Text(
                              "Log out",
                              style: GoogleFonts.raleway(fontSize: 16),
                            )),
                      ],
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
