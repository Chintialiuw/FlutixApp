import 'package:flutter/material.dart';

class TicketPage extends StatefulWidget {
  const TicketPage({super.key});

  @override
  State<TicketPage> createState() => _TicketPageState();
}

class _TicketPageState extends State<TicketPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Text(
            "My Tickets",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 26, 18, 11),
                  foregroundColor: Color.fromARGB(255, 229, 229, 203),
                ),
                child: Text("New"),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 26, 18, 11),
                  foregroundColor: Color.fromARGB(255, 229, 229, 203),
                ),
                child: Text("Used"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
