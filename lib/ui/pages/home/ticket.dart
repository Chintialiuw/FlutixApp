import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutixapp/ui/pages/home/detailTicket.dart';
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TicketPage extends StatefulWidget {
  const TicketPage({super.key});

  @override
  State<TicketPage> createState() => _TicketPageState();
}

class _TicketPageState extends State<TicketPage> {
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
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
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
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFE1A20B),
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
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFE1A20B),
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
                  height: 20,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 75,
                        height: 100,
                        margin: const EdgeInsets.only(left: 20),
                        child: Image.asset("assets/images/card/Carl's-date.png",
                            fit: BoxFit.fill),
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => detailTicket()),
                          );
                        },
                        child: Text(
                          "Carl's Date",
                          style: GoogleFonts.raleway(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ))
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 75,
                        height: 100,
                        margin: const EdgeInsets.only(left: 20, bottom: 20),
                        child: Image.asset("assets/images/card/Carl's-date.png",
                            fit: BoxFit.fill),
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Carl's Date",
                          style: GoogleFonts.raleway(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ))
                  ],
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 75,
                        height: 100,
                        margin: const EdgeInsets.only(left: 20, bottom: 20),
                        child: Image.asset("assets/images/card/Carl's-date.png",
                            fit: BoxFit.fill),
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Carl's Date",
                          style: GoogleFonts.raleway(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ))
                  ],
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 75,
                        height: 100,
                        margin: const EdgeInsets.only(left: 20, bottom: 20),
                        child: Image.asset("assets/images/card/Carl's-date.png",
                            fit: BoxFit.fill),
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Carl's Date",
                          style: GoogleFonts.raleway(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ))
                  ],
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 75,
                        height: 100,
                        margin: const EdgeInsets.only(left: 20, bottom: 20),
                        child: Image.asset("assets/images/card/Carl's-date.png",
                            fit: BoxFit.fill),
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Carl's Date",
                          style: GoogleFonts.raleway(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ))
                  ],
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 75,
                        height: 100,
                        margin: const EdgeInsets.only(left: 20, bottom: 20),
                        child: Image.asset("assets/images/card/Carl's-date.png",
                            fit: BoxFit.fill),
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Carl's Date",
                          style: GoogleFonts.raleway(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
