import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

Color bgColor = const Color(0xFFFBFAF9);
Color cardsColor = const Color(0xFFEAE9E7);
Color textColor = const Color(0xFFF4EDE6);

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
                            InkWell(
                              onTap: () {},
                              child: Stack(
                                children: [
                                  Container(
                                    width: 160,
                                    height: 112,
                                    margin: const EdgeInsets.only(left: 20),
                                    child: Image.asset(
                                      "images/card/avengers.png",
                                      fit: BoxFit.fill,
                                      color: Colors.black.withOpacity(0.4),
                                      colorBlendMode: BlendMode.darken,
                                    ),
                                  ),
                                  Positioned(
                                    left: 30,
                                    top: 70,
                                    child: Column(
                                      children: [
                                        Container(
                                          padding:
                                              const EdgeInsets.only(right: 10),
                                          child: Text(
                                            "Avengers",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                              color: textColor,
                                            ),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Row(
                                              children:
                                                  List.generate(2, (index) {
                                                return Icon(
                                                  Icons.star,
                                                  color: textColor,
                                                  size: 14,
                                                );
                                              }),
                                            ),
                                            Icon(
                                              Icons.star_half,
                                              color: textColor,
                                              size: 14,
                                            ),
                                            const SizedBox(width: 10),
                                            Text(
                                              "7/10",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12,
                                                color: textColor,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(width: 20),
                            InkWell(
                              onTap: () {},
                              child: Stack(
                                children: [
                                  SizedBox(
                                    width: 160,
                                    height: 112,
                                    child: Image.asset(
                                      "images/card/despicable-me.png",
                                      fit: BoxFit.fill,
                                      color: Colors.black.withOpacity(0.4),
                                      colorBlendMode: BlendMode.darken,
                                    ),
                                  ),
                                  Positioned(
                                    left: 10,
                                    top: 70,
                                    child: Column(
                                      children: [
                                        Text(
                                          "Despicabe Me",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                            color: textColor,
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Row(
                                              children:
                                                  List.generate(3, (index) {
                                                return Icon(
                                                  Icons.star,
                                                  color: textColor,
                                                  size: 14,
                                                );
                                              }),
                                            ),
                                            Icon(
                                              Icons.star_half,
                                              color: textColor,
                                              size: 14,
                                            ),
                                            const SizedBox(width: 10),
                                            Text(
                                              "8.5/10",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12,
                                                color: textColor,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(width: 20),
                            InkWell(
                              onTap: () {},
                              child: Stack(
                                children: [
                                  SizedBox(
                                    width: 160,
                                    height: 112,
                                    child: Image.asset(
                                      "images/card/monster.png",
                                      fit: BoxFit.fill,
                                      color: Colors.black.withOpacity(0.4),
                                      colorBlendMode: BlendMode.darken,
                                    ),
                                  ),
                                  Positioned(
                                    left: 10,
                                    top: 70,
                                    child: Column(
                                      children: [
                                        Text(
                                          "Monster, inc.",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                            color: textColor,
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Row(
                                              children:
                                                  List.generate(4, (index) {
                                                return Icon(
                                                  Icons.star,
                                                  color: textColor,
                                                  size: 14,
                                                );
                                              }),
                                            ),
                                            const SizedBox(width: 10),
                                            Text(
                                              "8/10",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12,
                                                color: textColor,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(width: 20),
                            InkWell(
                              onTap: () {},
                              child: Stack(
                                children: [
                                  Container(
                                    width: 160,
                                    height: 112,
                                    margin: const EdgeInsets.only(right: 20),
                                    child: Image.asset(
                                      "images/card/despicable-me.png",
                                      fit: BoxFit.fill,
                                      color: Colors.black.withOpacity(0.4),
                                      colorBlendMode: BlendMode.darken,
                                    ),
                                  ),
                                  Positioned(
                                    left: 10,
                                    top: 70,
                                    child: Column(
                                      children: [
                                        Text(
                                          "Despicabe Me",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                            color: textColor,
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Row(
                                              children:
                                                  List.generate(3, (index) {
                                                return Icon(
                                                  Icons.star,
                                                  color: textColor,
                                                  size: 14,
                                                );
                                              }),
                                            ),
                                            Icon(
                                              Icons.star_half,
                                              color: textColor,
                                              size: 14,
                                            ),
                                            const SizedBox(width: 10),
                                            Text(
                                              "8.5/10",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12,
                                                color: textColor,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
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
                      Column(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            color: cardsColor,
                            child: Image.asset("images/card/action.png"),
                          ),
                          const Text("Action"),
                        ],
                      ),
                      const SizedBox(width: 20),
                      Column(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            color: cardsColor,
                            child: Image.asset("images/card/battle.png"),
                          ),
                          const Text("Battle"),
                        ],
                      ),
                      const SizedBox(width: 20),
                      Column(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            color: cardsColor,
                            child: Image.asset("images/card/sci-fi.png"),
                          ),
                          const Text("Sci-fi"),
                        ],
                      ),
                      const SizedBox(width: 20),
                      Column(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            color: cardsColor,
                            child: Image.asset("images/card/kids.png"),
                          ),
                          const Text("Fantasy"),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
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
