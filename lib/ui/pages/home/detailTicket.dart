// ignore_for_file: camel_case_types

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
              Text(
                "Ticket",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  width: 276,
                  height: 131,
                  margin: const EdgeInsets.only(top: 20, left: 20),
                  child:
                      Image.asset("images/card/monster.png", fit: BoxFit.fill),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
