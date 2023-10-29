import 'package:flutixapp/ui/pages/home/my_home.dart';
import 'package:flutixapp/ui/pages/home/ticket.dart';
import 'package:flutter/material.dart';

class success_checkout extends StatefulWidget {
  success_checkout({super.key});

  @override
  State<success_checkout> createState() => _success_checkout_State();
}

class _success_checkout_State extends State<success_checkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
            padding: const EdgeInsets.only(top: 70.0, left: 20.0, right: 20.0),
            child: Center(
              child: Column(
                children: [
                  Container(
                    width: 250,
                    height: 300,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/card/success-checkout.png"),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Happy Watching !",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "You have succesfully bought the ticket",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.normal),
                  ),
                  SizedBox(height: 50),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return TicketPage();
                          },
                        ),
                      );
                    },
                    child: Text(
                      "My Tickets",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      minimumSize: Size(200, 50),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return MyHomePage();
                          },
                        ),
                      );
                    },
                    child: Text(
                      "Back to Home",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                        ),
                    ),
                  )
                ],
              ),
            ),
          ),
          ],
        ),
      ),
    );
  }
}
