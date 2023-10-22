import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

Color bgColor = const Color(0xFFFBFAF9);
Color cardsColor = const Color(0xFFEAE9E7);

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: ListView(
        children: [
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 35.0, top: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("images/card/minji.jpg"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Chintia Liu Wintin",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "IDR 500.000",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 170,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 40),
                          child: const Text(
                            "Now Playing",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 150,
                              margin: const EdgeInsets.only(left: 20),
                              child: Image.asset("images/card/minji.jpg"),
                            ),
                            const SizedBox(width: 20),
                            SizedBox(
                              width: 150,
                              child: Image.asset("images/card/minji.jpg"),
                            ),
                            const SizedBox(width: 20),
                            SizedBox(
                              width: 150,
                              child: Image.asset("images/card/minji.jpg"),
                            ),
                            const SizedBox(width: 20),
                            SizedBox(
                              width: 150,
                              child: Image.asset("images/card/minji.jpg"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 40),
                    child: const Text(
                      "Movie Category",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        color: cardsColor,
                        child: Image.asset("images/card/action.png"),
                      ),
                      const SizedBox(width: 20),
                      Container(
                        width: 50,
                        height: 50,
                        color: cardsColor,
                        child: Image.asset("images/card/battle.png"),
                      ),
                      const SizedBox(width: 20),
                      Container(
                        width: 50,
                        height: 50,
                        color: cardsColor,
                        child: Image.asset("images/card/sci-fi.png"),
                      ),
                      const SizedBox(width: 20),
                      Container(
                        width: 50,
                        height: 50,
                        color: cardsColor,
                        child: Image.asset("images/card/kids.png"),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 30),
              SizedBox(
                height: 240,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 40),
                          child: const Text(
                            "Coming Soon",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 150,
                              height: 200,
                              margin: const EdgeInsets.only(left: 20),
                              child: Image.asset("images/card/minji.jpg",
                                  fit: BoxFit.fitHeight),
                            ),
                            const SizedBox(width: 20),
                            SizedBox(
                              width: 150,
                              height: 200,
                              child: Image.asset("images/card/minji.jpg",
                                  fit: BoxFit.fitHeight),
                            ),
                            const SizedBox(width: 20),
                            SizedBox(
                              width: 150,
                              height: 200,
                              child: Image.asset("images/card/minji.jpg",
                                  fit: BoxFit.fitHeight),
                            ),
                            const SizedBox(width: 20),
                            SizedBox(
                              width: 150,
                              height: 200,
                              child: Image.asset("images/card/minji.jpg",
                                  fit: BoxFit.fitHeight),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: 300,
                height: 100,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: Image.asset("images/card/minji.jpg", fit: BoxFit.fill),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
