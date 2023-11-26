// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutixapp/models/models.dart';
import 'package:flutixapp/ui/pages/home/seat.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class placesdate extends StatelessWidget {
  Movie movie;
  placesdate({super.key, required this.movie});

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
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0, bottom: 10.0),
                child: Text(
                  "Choose Date",
                  style: GoogleFonts.raleway(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    for (int i = 0; i < 6; i++)
                      Container(
                        width: 80,
                        height: 90,
                        margin: EdgeInsets.only(
                            left: 20.0, top: 10.0, bottom: 10.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.grey,
                        ),
                      ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, bottom: 10.0),
                    child: Text(
                      "Where to Watch ?",
                      style: GoogleFonts.raleway(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, bottom: 5.0),
                    child: Text(
                      "CGV Paris Van Java",
                      style: GoogleFonts.raleway(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        for (int i = 0; i < 6; i++)
                          Container(
                            width: 100,
                            height: 50,
                            margin: EdgeInsets.only(
                                left: 20.0, top: 5.0, bottom: 15.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.grey,
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, bottom: 5.0),
                child: Text(
                  "CGV Plaza Mulia",
                  style: GoogleFonts.raleway(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.normal),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    for (int i = 0; i < 6; i++)
                      Container(
                        width: 100,
                        height: 50,
                        margin:
                            EdgeInsets.only(left: 20.0, top: 5.0, bottom: 15.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.grey,
                        ),
                      ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, bottom: 5.0),
                child: Text(
                  "CGV Balikpapan Plaza",
                  style: GoogleFonts.raleway(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.normal),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    for (int i = 0; i < 6; i++)
                      Container(
                        width: 100,
                        height: 50,
                        margin:
                            EdgeInsets.only(left: 20.0, top: 5.0, bottom: 15.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.grey,
                        ),
                      ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Seat(
                                movie: movie,
                              )));
                    },
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 105, right: 20, top: 50, bottom: 40),
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
        ],
      ),
    );
  }
}
