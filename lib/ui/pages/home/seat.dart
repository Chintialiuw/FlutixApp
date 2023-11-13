// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables, library_private_types_in_public_api

import 'package:flutixapp/ui/pages/home/checkout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class seat extends StatefulWidget {
  const seat({Key? key}) : super(key: key);

  @override
  _SeatState createState() => _SeatState();
}

Color seatBookedColor = const Color(0xFFA2A69D);
Color seatSelectedColor = const Color(0xFFE1A20B);

class _SeatState extends State<seat> {
  List<List<bool>> seatStatus =
      List.generate(8, (index) => List.filled(6, false));

  Widget buildSeatContainer(String seatText, int row, int col) {
    return InkWell(
      onTap: () {
        setState(() {
          seatStatus[row][col] = !seatStatus[row][col];
        });
      },
      child: Container(
        width: 50,
        height: 50,
        margin: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
        decoration: BoxDecoration(
          color: seatStatus[row][col] ? seatSelectedColor : Colors.white,
          border: Border.all(color: Color(0xFFF8D061), width: 1),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(seatText),
        ),
      ),
    );
  }

  List<Widget> buildSeatRow(String rowName, int row) {
    List<Widget> rowWidgets = List.generate(6, (col) {
      final seatText = "$rowName${6 - col}";
      return buildSeatContainer(seatText, row, col);
    });
    return rowWidgets;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                width: 360,
                height: 10,
                margin: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Color(0xFF9F816E)),
              ),
              Align(
                  alignment: Alignment.center,
                  child: Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: Text("Layar Bioskop")))
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              8,
              (index) => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: buildSeatRow(
                  String.fromCharCode('H'.codeUnitAt(0) - index),
                  index, // Add this line to pass the index argument
                ),
              ),
            ),
          ),
          Row(
            children: [
              Row(
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    margin: EdgeInsets.only(left: 50, right: 10, top: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: seatBookedColor,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      "Booked",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Color(0xFFF8D061), width: 1),
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      "Available",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    margin: EdgeInsets.only(left: 10, top: 10),
                    decoration: BoxDecoration(
                      color: seatSelectedColor,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10, left: 10),
                    child: Text(
                      "Selected",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                  top: 50.0,
                  bottom: 50.0,
                  right: 100.0,
                ),
                child: Text(
                  "Confirm Your Book",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return checkout();
                        },
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Icon(
                      CupertinoIcons.arrow_right_circle_fill,
                      color: Colors.orange,
                      size: 50,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
