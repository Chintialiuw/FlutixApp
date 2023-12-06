// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutixapp/ui/pages/home/ticket.dart';
import 'package:flutter/material.dart';

import '../../../models/models.dart';

class detailTicket extends StatefulWidget {
  const detailTicket({super.key});

  @override
  State<detailTicket> createState() => _detailTicketState();
}

class _detailTicketState extends State<detailTicket> {
  Movie? movies;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Column(
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
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 276,
                        height: 131,
                        margin: const EdgeInsets.only(top: 20, left: 20),
                        child: Image.network(
                          movies?.poster ?? "",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Text(movies?.judul ?? "",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.normal)),
                    Text("Adventure - Indonesia", //movies?.genre ?? ""
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.normal)),
                    Row(
                      children: List.generate(5, (index) {
                        //movies?.rate ?? "",
                        return Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 12,
                        );
                      }),
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Text("Cinema",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.normal)),
                        Spacer(),
                        Text("Paris Van Java Mall",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.normal)),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Text("Date & Time",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.normal)),
                        Spacer(),
                        Text("280524 & 20:00",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.normal)),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Text("Seat",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.normal)),
                        Spacer(),
                        Text("C1, C2",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.normal)),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Column(
                          children: [
                            Column(
                              children: [
                                Text("Name",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal)),
                                // Spacer(),
                                Text("(nama)",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal)),
                              ],
                            ),
                            SizedBox(height: 15),
                            Column(
                              children: [
                                Text("Price",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal)),
                                // Spacer(),
                                Text("Rp",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal)),
                              ],
                            ),
                          ],
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: CircleAvatar(
                            radius: 50,
                            // backgroundImage: Image.network(user.foto).image,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Text("ID Order",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.normal)),
                        Spacer(),
                        Text("2208199612389",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.normal)),
                      ],
                    )
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
