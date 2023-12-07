// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../models/models.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  Profile? user;
  final TextEditingController _controllerNama = TextEditingController();
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPass = TextEditingController();
  final TextEditingController _controllerConfPass = TextEditingController();

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
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(
                        user?.foto ?? "",
                      ),
                    ),
                    Padding(
                        padding:
                            const EdgeInsets.only(top: 40, left: 20, right: 20),
                        child: TextFormField(
                          controller: _controllerNama,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Insert your full name';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            border:
                                OutlineInputBorder(borderSide: BorderSide()),
                            labelText: "Full Name",
                            labelStyle:
                                GoogleFonts.raleway(color: Colors.black),
                            hintText: user?.nama ?? "",
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
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Insert your email address';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            border:
                                OutlineInputBorder(borderSide: BorderSide()),
                            labelText: "Email Address",
                            labelStyle:
                                GoogleFonts.raleway(color: Colors.black),
                            hintText: user?.email ?? "",
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
                        controller: _controllerPass,
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
                      padding:
                          const EdgeInsets.only(top: 30, left: 20, right: 20),
                      child: TextFormField(
                        controller: _controllerConfPass,
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
                    Padding(
                      padding: const EdgeInsets.all(50.0),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
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
