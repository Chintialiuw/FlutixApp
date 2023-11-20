// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types

import 'package:flutixapp/ui/pages/home/success_checkout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class checkout extends StatefulWidget {
  const checkout({super.key});

  @override
  State<checkout> createState() => _checkoutState();
}

class _checkoutState extends State<checkout> {
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
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0, bottom: 10.0, top: 10, right: 20),
                child: Text(
                  "Check Details Below Before Checkout",
                  style: GoogleFonts.raleway(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                children: [
                  Container(
                    width: 90,
                    height: 110,
                    color: Colors.grey,
                    margin: EdgeInsets.only(left: 20.0, top: 10.0),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          "Monster Inc",
                          style: GoogleFonts.raleway(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          "Adventure - Indonesia",
                          style: GoogleFonts.raleway(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 7.0),
                        child: Row(
                          children: [
                            for (int i = 0; i < 4; i++)
                              Icon(
                                Icons.star_rounded,
                                color: Colors.black,
                                size: 16,
                              ),
                            Icon(
                              Icons.star_half_rounded,
                              color: Colors.black,
                              size: 16,
                            ),
                            Text(
                              "  8 / 10",
                              style: GoogleFonts.openSans(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10.0),
              Divider(
                color: Colors.black,
                thickness: 2,
                indent: 20.0,
                endIndent: 20.0,
              ),
              SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "ID Order",
                          textAlign: TextAlign.left,
                          style: GoogleFonts.raleway(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(width: 135),
                        Text(
                          "2208199612389",
                          textAlign: TextAlign.right,
                          style: GoogleFonts.openSans(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          "Cinema",
                          textAlign: TextAlign.left,
                          style: GoogleFonts.raleway(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(width: 120),
                        Text(
                          "Paris Van Java Mall",
                          textAlign: TextAlign.right,
                          style: GoogleFonts.raleway(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          "Date & Time",
                          textAlign: TextAlign.left,
                          style: GoogleFonts.raleway(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(width: 130),
                        Text(
                          "Sat 21, 12:00",
                          textAlign: TextAlign.right,
                          style: GoogleFonts.openSans(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          "2 Tickets",
                          textAlign: TextAlign.left,
                          style: GoogleFonts.raleway(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(width: 205),
                        Text(
                          "C1, C2",
                          textAlign: TextAlign.right,
                          style: GoogleFonts.raleway(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          "Seat",
                          textAlign: TextAlign.left,
                          style: GoogleFonts.raleway(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(width: 180),
                        Text(
                          "Rp. 50.000 x 2",
                          textAlign: TextAlign.right,
                          style: GoogleFonts.openSans(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          "Fees",
                          textAlign: TextAlign.left,
                          style: GoogleFonts.raleway(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(width: 180),
                        Text(
                          "Rp. 20.000 x 2",
                          textAlign: TextAlign.right,
                          style: GoogleFonts.openSans(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          "Total",
                          textAlign: TextAlign.left,
                          style: GoogleFonts.raleway(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(width: 195),
                        Text(
                          "Rp. 120.000",
                          textAlign: TextAlign.right,
                          style: GoogleFonts.openSans(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.0),
              Divider(
                color: Colors.black,
                thickness: 2,
                indent: 20.0,
                endIndent: 20.0,
              ),
              SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.only(right: 20.0, left: 20.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Saldo Wallet",
                          textAlign: TextAlign.left,
                          style: GoogleFonts.raleway(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(width: 135),
                        Text(
                          "Rp. 560.000",
                          textAlign: TextAlign.right,
                          style: GoogleFonts.openSans(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(top: 50, left: 20, bottom: 40),
                child: Text(
                  "Select Your Seat",
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
                      MaterialPageRoute(builder: (context) => success_checkout()));
                },
                child: Padding(
                  padding: EdgeInsets.only(
                      right: 20, top: 50, bottom: 40, left: 105),
                  child: Icon(
                    Icons.arrow_circle_right,
                    color: Color(0xFFE1A20B),
                    size: 60,
                  ),
                ),
              ),
            ],
          )
            ],
          )
        ],
      ),
    );
  }
}
