import 'package:flutixapp/ui/pages/home/home.dart';
import 'package:flutixapp/ui/pages/splash_screen/confirmation.dart';
import 'package:flutter/material.dart';

class uprof extends StatefulWidget {
  const uprof({super.key});

  @override
  State<uprof> createState() => _uprofState();
}

class _uprofState extends State<uprof> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(scrollDirection: Axis.vertical, children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => confir()));
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 40, left: 30, bottom: 10),
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.yellow,
                  size: 40,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                "Select Your",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 30),
                  child: Text(
                    "Genre",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 30),
                  child: Container(
                    width: 150,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      image: DecorationImage(
                        image: AssetImage("assets/splash/horror.jpeg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Center(
                      child: Text("Horror",
                      style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontWeight: FontWeight.bold
                    ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 30),
                  child: Container(
                    width: 150,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      image: DecorationImage(
                        image: AssetImage("assets/splash/music.jpeg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Center(
                      child: Text("Music",
                      style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontWeight: FontWeight.bold
                    ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 30),
                  child: Container(
                    width: 150,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      image: DecorationImage(
                        image: AssetImage("assets/splash/actionn.jpeg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Center(
                      child: Text("Action",
                      style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontWeight: FontWeight.bold
                    ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 30),
                  child: Container(
                    width: 150,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      image: DecorationImage(
                        image: AssetImage("assets/splash/drama.jpeg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Center(
                      child: Text("Drama",
                      style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontWeight: FontWeight.bold
                    ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 30),
                  child: Container(
                    width: 150,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      image: DecorationImage(
                        image: AssetImage("assets/splash/adventure.jpeg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Center(
                      child: Text("Adventure",
                      style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontWeight: FontWeight.bold
                    ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 30),
                  child: Container(
                    width: 150,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      image: DecorationImage(
                        image: AssetImage("assets/splash/crime.jpeg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Center(
                      child: Text("Crime",
                      style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontWeight: FontWeight.bold
                    ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 30),
              child: Text(
                "Which Movie Language",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 30),
              child: Text(
                "You Prefer",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 30),
                  child: Container(
                    width: 150,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      image: DecorationImage(
                        image: AssetImage("assets/splash/indo.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Center(
                      child: Text("Indonesian",
                      style: TextStyle(
                      color: Colors.black,
                      fontSize: 23,
                      fontWeight: FontWeight.bold
                    ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 30),
                  child: Container(
                    width: 150,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      image: DecorationImage(
                        image: AssetImage("assets/splash/english.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Center(
                      child: Text("English",
                      style: TextStyle(
                      color: Colors.black,
                      fontSize: 23,
                      fontWeight: FontWeight.bold
                    ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 30),
                  child: Container(
                    width: 150,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      image: DecorationImage(
                        image: AssetImage("assets/splash/japan.jpeg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Center(
                      child: Text("Japanase",
                      style: TextStyle(
                      color: Colors.black,
                      fontSize: 23,
                      fontWeight: FontWeight.bold
                    ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 30),
                  child: Container(
                    width: 150,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      image: DecorationImage(
                        image: AssetImage("assets/splash/korea.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Center(
                      child: Text("Korean",
                      style: TextStyle(
                      color: Colors.black,
                      fontSize: 23,
                      fontWeight: FontWeight.bold
                    ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 30),
                  child: Text(
                    "Continue tp Sign Up",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
              Padding(
                padding: const EdgeInsets.only(left: 100, top: 30),
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
      ]),
    );
  }
}
