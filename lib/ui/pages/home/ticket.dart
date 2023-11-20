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
        leading: Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 10.0),
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
          child: Text("My Tickets",
          style: GoogleFonts.raleway(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20)
          ,),
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
                            backgroundColor: Color.fromARGB(255, 26, 18, 11),
                            foregroundColor:
                                Color.fromARGB(255, 229, 229, 203),
                            fixedSize: Size(120, 20)),
                        child: Text("New"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 26, 18, 11),
                            foregroundColor:
                                Color.fromARGB(255, 229, 229, 203),
                            fixedSize: Size(120, 20)),
                        child: Text("Used"),
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
                        child: Image.asset(
                            "assets/images/card/Carl's-date.png",
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
                        child: Text("Carl's Date"))
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
                        child: Image.asset(
                            "assets/images/card/Carl's-date.png",
                            fit: BoxFit.fill),
                      ),
                    ),
                    TextButton(onPressed: () {}, child: Text("Carl's Date"))
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
                        child: Image.asset(
                            "assets/images/card/Carl's-date.png",
                            fit: BoxFit.fill),
                      ),
                    ),
                    TextButton(onPressed: () {}, child: Text("Carl's Date"))
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
                        child: Image.asset(
                            "assets/images/card/Carl's-date.png",
                            fit: BoxFit.fill),
                      ),
                    ),
                    TextButton(onPressed: () {}, child: Text("Carl's Date"))
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
                        child: Image.asset(
                            "assets/images/card/Carl's-date.png",
                            fit: BoxFit.fill),
                      ),
                    ),
                    TextButton(onPressed: () {}, child: Text("Carl's Date"))
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
                        child: Image.asset(
                            "assets/images/card/Carl's-date.png",
                            fit: BoxFit.fill),
                      ),
                    ),
                    TextButton(onPressed: () {}, child: Text("Carl's Date"))
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
