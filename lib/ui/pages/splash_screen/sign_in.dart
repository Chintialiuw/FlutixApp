// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types

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
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
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
          Padding(
            padding: const EdgeInsets.only(
              top: 80,left: 20,right: 20
            ),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide()
                ),
                labelText: "Email Address",

                labelStyle: TextStyle(
                  color: Colors.black
                ),

                hintText: "chintialiuw@gmail.com",
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,
                    width: 3,
                  ),
                ),
                
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 170, 145, 31),
                    width: 3,
                    ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 40,left: 20,right: 20
            ),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide()
                ),
                labelText: "Password",

                labelStyle: TextStyle(
                  color: Colors.black
                ),

                hintText: "*********",
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,
                    width: 3,
                  ),
                ),
                
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 170, 145, 31),
                    width: 3,
                    ),
                ),
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 85, left: 30),
                child: Text("Continue to Sign In",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 130, top: 80),
                child: Icon(
                  Icons.arrow_circle_right,
                  color: Colors.yellow,
                  size: 60,
                  ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}