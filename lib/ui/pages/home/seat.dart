// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables, library_private_types_in_public_api

import 'package:flutixapp/ui/pages/home/checkout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class seat extends StatefulWidget {
  const seat({Key? key}) : super(key: key);

  @override
  _seatState createState() => _seatState();
}

Color seatBookedColor = const Color(0xFFA2A69D);
Color seatSelectedColor = const Color(0xFFE1A20B);

class _seatState extends State<seat> {
  Widget buildseatContainer(String seatText) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 50,
        height: 50,
        margin: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: seatBookedColor,
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(seatText),
        ),
      ),
    );
  }

  List<Widget> buildseatRow(String rowName) {
    List<Widget> row = List.generate(6, (index) {
      final seatText = "$rowName${6 - index}";
      return buildseatContainer(seatText);
    });
    return row;
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
                children: buildseatRow(
                    String.fromCharCode('H'.codeUnitAt(0) - index)),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Row(
              children: [
                Container(
                  width: 20,
                  height: 20,
                  margin: EdgeInsets.only(left: 50, right: 10, top: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(4),
                    color: seatBookedColor,
                  ),
                ),
                Text(
                  "Booked",
                  style: TextStyle(fontSize: 12),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                  top: 50.0,
                  bottom: 50.0,
                  right: 200.0,
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
