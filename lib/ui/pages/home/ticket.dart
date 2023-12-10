import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutixapp/ui/pages/home/detailTicket.dart';
import 'package:flutixapp/ui/widgets/bottomnav.dart';
import 'package:flutixapp/ui/widgets/historyCheck.dart';
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../models/models.dart';

class TicketPage extends StatefulWidget {
  const TicketPage({super.key});

  @override
  State<TicketPage> createState() => _TicketPageState();
}

class _TicketPageState extends State<TicketPage> {
  Movie? movies;

  Color buttonColorNew = Colors.transparent;
  Color buttonColorUsed = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Text(
            "My Tickets",
            style: GoogleFonts.raleway(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width - 90,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            buttonColorNew = Color(0xFFE1A20B);
                            buttonColorUsed = Colors.transparent;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: buttonColorNew,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          minimumSize: Size(130, 40),
                        ),
                        child: Text(
                          "New",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            buttonColorUsed = Color(0xFFE1A20B);
                            buttonColorNew = Colors.transparent;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: buttonColorUsed,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          minimumSize: Size(130, 40),
                        ),
                        child: Text(
                          "Used",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => detailTicket(),
                      ),
                    );
                  },
                  child: Container(
                    height: 500,
                    child: buttonColorNew == Color(0xFFE1A20B)
                        ? buildHistoryList(true)
                        : buildHistoryList(false),
                  ),
                ),
                SizedBox(
                  height: 10,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}