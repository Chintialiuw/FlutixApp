// ignore_for_file: camel_case_types

import 'package:flutixapp/ui/pages/home/ticket.dart';
import 'package:flutter/material.dart';

class detailTicket extends StatefulWidget {
  const detailTicket({super.key});

  @override
  State<detailTicket> createState() => _detailTicketState();
}

class _detailTicketState extends State<detailTicket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => TicketPage()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20, left: 20),
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.yellow,
                        size: 40,
                      ),
                    ),
                  ),
                  Text(
                    "Ticket",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  width: 276,
                  height: 131,
                  margin: const EdgeInsets.only(top: 20, left: 20),
                  child: Image.asset("assets/images/card/monster.png",
                      fit: BoxFit.fill),
                ),
              ),
              Text("Monster, Inc.",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.normal)),
              Text("Adventure - Indonesia",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.normal)),
              Row(
                children: List.generate(5, (index) {
                  return Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 12,
                  );
                }),
              ),
              Row(
                children: [
                  Text("Cinema",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.normal)),
                  SizedBox(
                    width: 285,
                  ),
                  Text("Paris Van Java Mall",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.normal)),
                ],
              ),
              Row(
                children: [
                  Text("Date & Time",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.normal)),
                  SizedBox(
                    width: 200,
                  ),
                  Text("280524 & 20:00",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.normal)),
                ],
              ),
              Row(
                children: [
                  Text("Seat",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.normal)),
                  SizedBox(
                    width: 285,
                  ),
                  Text("C1, C2",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.normal)),
                ],
              ),
              Row(
                children: [
                  Text("Name",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.normal)),
                  Text("Price",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.normal)),
                ],
              ),
              Row(
                children: [
                  Text("ID Order",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.normal)),
                  SizedBox(
                    width: 285,
                  ),
                  Text("2208199612389",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.normal)),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
