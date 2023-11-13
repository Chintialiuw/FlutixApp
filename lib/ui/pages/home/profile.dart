// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutixapp/ui/pages/home/edit_profile.dart';
import 'package:flutixapp/ui/pages/home/myWallet.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({super.key});

  @override
  State<ProfilPage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilPage> {
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
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.all(25),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage("images/card/minji.jpg"),
                    ),
                    Text(
                      username ?? "Loading...",
                      style: TextStyle(fontSize: 24),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      email ?? "Loading...",
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 35),
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
                              style: TextStyle(fontSize: 16),
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
                              style: TextStyle(fontSize: 16),
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
                              style: TextStyle(fontSize: 16),
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
                              style: TextStyle(fontSize: 16),
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
                              style: TextStyle(fontSize: 16),
                            )),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              FirebaseAuth.instance.signOut();
                            },
                            icon: Icon(Icons.logout)),
                        TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                                foregroundColor: Colors.black),
                            child: Text(
                              "Log out",
                              style: TextStyle(fontSize: 16),
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
