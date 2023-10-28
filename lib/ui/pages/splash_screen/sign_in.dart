import 'package:flutixapp/ui/pages/home/home.dart';
import 'package:flutter/material.dart';

class signIn extends StatefulWidget {
  const signIn({super.key});

  @override
  State<signIn> createState() => _signInState();
}

class _signInState extends State<signIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 60, left:20
                ),
                child: Text("Welcome back,",
                style: TextStyle(
                  fontSize: 26,
                  color: Colors.black,
                ),
                ),
              ),
              
              Padding(
                padding: const EdgeInsets.only(
                   top: 70, left:85
                ),
                child: Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    image: DecorationImage(
                      image: AssetImage("assets/splash/logo-black.png"),
                      fit: BoxFit.cover,
                      )
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 25, 
            ),
            child: Text("Explorer!",
            style: TextStyle(
              fontSize: 26,
              color: Colors.black,
            ),
            ),
          ),
        ],
      ),
    );
  }
}