

import 'package:flutixapp/ui/pages/home/ticket.dart';
import 'package:flutixapp/ui/provider.dart';
import 'package:flutixapp/ui/widgets/bottomnav.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class success_checkout extends StatefulWidget {
  const success_checkout({super.key});

  @override
  State<success_checkout> createState() => _success_checkout_State();
}

class _success_checkout_State extends State<success_checkout> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<StatusProvider>(context);
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 60.0, left: 10.0, right: 10.0),
                    child: Container(
                      width: 250,
                      height: 300,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              "assets/images/card/success-checkout.png"),
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Happy Watching !",
                    style: GoogleFonts.raleway(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "You have succesfully bought the ticket",
                    style: GoogleFonts.raleway(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.normal),
                  ),
                  SizedBox(height: 80),
                  ElevatedButton(
                    onPressed: () {
                      provider.updateCurrentIndex(1);
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return BottomNav();
                          },
                        ),
                      );

                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFE1A20B),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      minimumSize: Size(200, 50),
                    ),
                    child: Text(
                      "My Tickets",
                      style: GoogleFonts.raleway(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextButton(
                    onPressed: () {
                      provider.updateCurrentIndex(0);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return BottomNav();
                          },
                        ),
                      );
                    },
                    child: Text(
                      "Back to Home",
                      style: GoogleFonts.raleway(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
