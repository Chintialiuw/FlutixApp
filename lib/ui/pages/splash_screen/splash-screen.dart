import 'package:flutixapp/ui/pages/splash_screen/sign_in.dart';
import 'package:flutixapp/ui/pages/splash_screen/sign_up.dart';
import 'package:flutter/material.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 130, left: 55),
            child: Container(
              width: 290,
              height: 220,
              decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                    image: AssetImage("assets/splash/flutix-logo.png"),
                    fit: BoxFit.cover,
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60, left: 105),
            child: Text(
              "New Experience",
              style: TextStyle(
                color: Colors.black,
                fontSize: 28,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25, left: 90),
            child: Text(
              "Watch a new movie much",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 110),
            child: Text(
              "easier than any before",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 20),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => signIn(),
                      ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(270, 45),
                  backgroundColor: Color.fromARGB(255, 239, 203, 43),
                ),
                child: Text(
                  "Get Started",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 100, top: 15),
                child: Text(
                  "Already have an account?",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => signUp())
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 5, top: 15),
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                      color: Color.fromARGB(255, 171, 158, 37),
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                    ),
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
