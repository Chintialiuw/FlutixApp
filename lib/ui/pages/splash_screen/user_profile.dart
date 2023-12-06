import 'package:flutixapp/auth/auth.dart';
import 'package:flutixapp/ui/widgets/bottomnav.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class uprof extends StatefulWidget {
  const uprof({super.key});

  @override
  State<uprof> createState() => _uprofState();
}

List<String> inputGenre = [];

class _uprofState extends State<uprof> {
  Map<String, Color> textColorMap = {
    'Horror': Colors.white,
    'Music': Colors.white,
    'Action': Colors.white,
    'Drama': Colors.white,
    'Adventure': Colors.white,
    'Crime': Colors.white,
    'Indonesian': Colors.white,
    'English': Colors.white,
    'Japanase': Colors.white,
    'Korean': Colors.white,
  };

  Color textColor = Colors.white;

  Future<void> _saveGenre() async {
    await Auth().genre(inputGenre);

    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => const BottomNav()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 30),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back_ios,
                color: Color(0xFFE1A20B),
                size: 32,
              ),
            ),
          ),
        ),
        body: ListView(scrollDirection: Axis.vertical, children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 20),
                child: Text(
                  "Select Your",
                  style: GoogleFonts.raleway(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 30),
                    child: Text(
                      "Genre",
                      style: GoogleFonts.raleway(
                          fontSize: 24,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 30),
                    child: ColorFiltered(
                      colorFilter: ColorFilter.mode(
                        const Color.fromARGB(255, 171, 162, 162)
                            .withOpacity(0.2),
                        BlendMode.darken,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            inputGenre.clear();
                            inputGenre.add('Horror');
                            textColorMap['Horror'] =
                                (textColorMap['Horror'] == Colors.white)
                                    ? Colors.deepOrange
                                    : Colors.white;
                          });
                        },
                        child: Container(
                          width: 150,
                          height: 100,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/splash/horror.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "Horror",
                              style: GoogleFonts.raleway(
                                  color: textColorMap['Horror'],
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, right: 20, left: 30),
                    child: ColorFiltered(
                      colorFilter: ColorFilter.mode(
                        const Color.fromARGB(255, 171, 162, 162)
                            .withOpacity(0.2),
                        BlendMode.darken,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            inputGenre.clear();
                            inputGenre.add('Music');
                            textColorMap['Music'] =
                                (textColorMap['Music'] == Colors.white)
                                    ? Colors.deepOrange
                                    : Colors.white;
                          });
                        },
                        child: Container(
                          width: 150,
                          height: 100,
                          decoration: const BoxDecoration(
                            color: Colors.black,
                            image: DecorationImage(
                              image: AssetImage("assets/splash/music.jpeg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "Music",
                              style: GoogleFonts.raleway(
                                  color: textColorMap['Music'],
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold),
                            ),
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
                    child: ColorFiltered(
                      colorFilter: ColorFilter.mode(
                        const Color.fromARGB(255, 171, 162, 162)
                            .withOpacity(0.2),
                        BlendMode.darken,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            inputGenre.clear();
                            inputGenre.add('Action');
                            textColorMap['Action'] =
                                (textColorMap['Action'] == Colors.white)
                                    ? Colors.deepOrange
                                    : Colors.white;
                          });
                        },
                        child: Container(
                          width: 150,
                          height: 100,
                          decoration: const BoxDecoration(
                            color: Colors.black,
                            image: DecorationImage(
                              image: AssetImage("assets/splash/action.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "Action",
                              style: GoogleFonts.raleway(
                                  color: textColorMap['Action'],
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, right: 20, left: 30),
                    child: ColorFiltered(
                      colorFilter: ColorFilter.mode(
                        const Color.fromARGB(255, 171, 162, 162)
                            .withOpacity(0.2),
                        BlendMode.darken,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            inputGenre.clear();
                            inputGenre.add('Drama');
                            textColorMap['Drama'] =
                                (textColorMap['Drama'] == Colors.white)
                                    ? Colors.deepOrange
                                    : Colors.white;
                          });
                        },
                        child: Container(
                          width: 150,
                          height: 100,
                          decoration: const BoxDecoration(
                            color: Colors.black,
                            image: DecorationImage(
                              image: AssetImage("assets/splash/drama.jpeg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "Drama",
                              style: GoogleFonts.raleway(
                                  color: textColorMap['Drama'],
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold),
                            ),
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
                    child: ColorFiltered(
                      colorFilter: ColorFilter.mode(
                        const Color.fromARGB(255, 171, 162, 162)
                            .withOpacity(0.2),
                        BlendMode.darken,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            inputGenre.clear();
                            inputGenre.add('Adventure');
                            textColorMap['Adventure'] =
                                (textColorMap['Adventure'] == Colors.white)
                                    ? Colors.deepOrange
                                    : Colors.white;
                          });
                        },
                        child: Container(
                          width: 150,
                          height: 100,
                          decoration: const BoxDecoration(
                            color: Colors.black,
                            image: DecorationImage(
                              image: AssetImage("assets/splash/adventure.jpeg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "Adventure",
                              style: GoogleFonts.raleway(
                                  color: textColorMap['Adventure'],
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 30, right: 20),
                    child: ColorFiltered(
                      colorFilter: ColorFilter.mode(
                        const Color.fromARGB(255, 171, 162, 162)
                            .withOpacity(0.2),
                        BlendMode.darken,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            inputGenre.clear();
                            inputGenre.add('Crime');
                            textColorMap['Crime'] =
                                (textColorMap['Crime'] == Colors.white)
                                    ? Colors.deepOrange
                                    : Colors.white;
                          });
                        },
                        child: Container(
                          width: 150,
                          height: 100,
                          decoration: const BoxDecoration(
                            color: Colors.black,
                            image: DecorationImage(
                              image: AssetImage("assets/splash/crime.jpeg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "Crime",
                              style: GoogleFonts.raleway(
                                  color: textColorMap['Crime'],
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 30),
                child: Text(
                  "Which Movie Language",
                  style: GoogleFonts.raleway(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 30),
                child: Text(
                  "You Prefer",
                  style: GoogleFonts.raleway(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 30),
                    child: ColorFiltered(
                      colorFilter: ColorFilter.mode(
                        const Color.fromARGB(255, 171, 162, 162)
                            .withOpacity(0.2),
                        BlendMode.darken,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            inputGenre.clear();
                            inputGenre.add('Indonesian');
                            textColorMap['Indonesian'] =
                                (textColorMap['Indonesian'] == Colors.white)
                                    ? Colors.deepOrange
                                    : Colors.white;
                          });
                        },
                        child: Container(
                          width: 150,
                          height: 100,
                          decoration: const BoxDecoration(
                            color: Colors.black,
                            image: DecorationImage(
                              image: AssetImage("assets/splash/indo.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "Indonesian",
                              style: GoogleFonts.raleway(
                                  color: textColorMap['Indonesian'],
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 30, right: 20),
                    child: ColorFiltered(
                      colorFilter: ColorFilter.mode(
                        const Color.fromARGB(255, 171, 162, 162)
                            .withOpacity(0.2),
                        BlendMode.darken,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            inputGenre.clear();
                            inputGenre.add('English');
                            textColorMap['English'] =
                                (textColorMap['English'] == Colors.white)
                                    ? Colors.deepOrange
                                    : Colors.white;
                          });
                        },
                        child: Container(
                          width: 150,
                          height: 100,
                          decoration: const BoxDecoration(
                            color: Colors.black,
                            image: DecorationImage(
                              image: AssetImage("assets/splash/english.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "English",
                              style: GoogleFonts.raleway(
                                  color: textColorMap['English'],
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold),
                            ),
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
                    child: ColorFiltered(
                      colorFilter: ColorFilter.mode(
                        const Color.fromARGB(255, 171, 162, 162)
                            .withOpacity(0.2),
                        BlendMode.darken,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            inputGenre.clear();
                            inputGenre.add('Japanase');
                            textColorMap['Japanase'] =
                                (textColorMap['Japanase'] == Colors.white)
                                    ? Colors.deepOrange
                                    : Colors.white;
                          });
                        },
                        child: Container(
                          width: 150,
                          height: 100,
                          decoration: const BoxDecoration(
                            color: Colors.black,
                            image: DecorationImage(
                              image: AssetImage("assets/splash/japan.jpeg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "Japanase",
                              style: GoogleFonts.raleway(
                                  color: textColorMap['Japanase'],
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 30, right: 20),
                    child: ColorFiltered(
                      colorFilter: ColorFilter.mode(
                        const Color.fromARGB(255, 171, 162, 162)
                            .withOpacity(0.2),
                        BlendMode.darken,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            inputGenre.clear();
                            inputGenre.add('Korean');
                            textColorMap['Korean'] =
                                (textColorMap['Korean'] == Colors.white)
                                    ? Colors.deepOrange
                                    : Colors.white;
                          });
                        },
                        child: Container(
                          width: 150,
                          height: 100,
                          decoration: const BoxDecoration(
                            color: Colors.black,
                            image: DecorationImage(
                              image: AssetImage("assets/splash/korea.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "Korean",
                              style: GoogleFonts.raleway(
                                  color: textColorMap['Korean'],
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 40, left: 30, bottom: 40),
                    child: Text(
                      "Continue to Sign Up",
                      style: GoogleFonts.raleway(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: _saveGenre,
                    child: const Padding(
                      padding: EdgeInsets.only(right: 35, top: 40, bottom: 40),
                      child: Icon(
                        Icons.arrow_circle_right,
                        color: Color(0xFFE1A20B),
                        size: 60,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ]));
  }
}

