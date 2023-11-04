import 'package:flutixapp/ui/pages/splash_screen/sign_in.dart';
import 'package:flutixapp/ui/pages/splash_screen/user_profile.dart';
import 'package:flutter/material.dart';

class confir extends StatefulWidget {
  const confir({super.key});

  @override
  State<confir> createState() => _confirState();
}

class _confirState extends State<confir> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => signIn()));
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 50,left: 30),
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.yellow,
              size: 40,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15, left: 30),
          child: Text("Confirm",
            style: TextStyle(
              fontSize: 24,
              color: Colors.black,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 30),
          child: Text("New Account",
            style: TextStyle(
              fontSize: 24,
              color: Colors.black,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 140, top: 110),
          child: Container(
            width: 130,
            height: 130,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 20, 16, 16),
              borderRadius: BorderRadius.circular(90),
              image: DecorationImage(
                image: AssetImage("assets/images/card/minji.jpg"),
                fit: BoxFit.cover,
                )
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10,left: 160),
          child: Text("Welcome,",
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 7,left: 160),
          child: Text("Chintia Liu",
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 150,left: 30),
              child: Text("Yes. I am In",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => uprof()));
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 170, top: 150),
                child: Icon(
                  Icons.arrow_circle_right,
                  color: Colors.yellow,
                  size: 60,
                ),
              ),
            ),
          ],
        ),
        ],
      ),
    );
  }
}