import 'package:flutter/material.dart';

class successtopup extends StatefulWidget {
  const successtopup({super.key});

  @override
  State<successtopup> createState() => _successtopupState();
}

class _successtopupState extends State<successtopup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 400,
        height: 800,
        decoration: BoxDecoration(
          color: Colors.grey[100],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 100, bottom: 50),
              child: Image.asset("assets/GAMBARUANGMU"),
            ),
            Text(
              "Wallet is Ready!",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text("You have successfully",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.normal)),
            Text("feed your wallet",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.normal)),
            Padding(padding: EdgeInsets.only(top: 100)),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 191, 203, 20),
                  foregroundColor: Color.fromARGB(255, 229, 229, 203),
                  fixedSize: Size(180, 20)),
              child: Text(
                "My Wallet",
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Back to Home", style: TextStyle(color: Color(0xFFAEAEAE))),
          ],
        ),
      ),
    );
  }
}
