import 'package:flutixapp/ui/widgets/moviecomingposter.dart';
import 'package:flutixapp/ui/widgets/movieposter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutixapp/models/models.dart';
import 'package:flutixapp/services/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

Color bgColor = const Color(0xFFFBFAF9);
Color cardsColor = const Color(0xFFEAE9E7);
Color textColor = const Color(0xFFF4EDE6);

class _HomePageState extends State<HomePage> {
  String username = '';
  String profilePictureUrl = '';
  int saldo = 0;
  List<Movie> movies = [];

  List<Movie> comingSoonMovies = [];

  @override
  void initState() {
    super.initState();
    loadProfile();
  }

  Future<void> loadProfile() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      username = prefs.getString('nama') ?? "";
      profilePictureUrl = prefs.getString('profilePictureUrl') ?? "";
      saldo = prefs.getInt('saldo') ?? 0;
    });
  }

  Future<String> _loadProfileImage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('profilePictureUrl') ?? "";
  }

  @override
  Widget build(BuildContext context) {
    Future<List<Movie>> nowPlaying = Api.getMovies('now_playing', 6);
    Future<List<Movie>> comingSoon = Api.getMovies('upcoming', 6);

    return Scaffold(
      backgroundColor: bgColor,
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    FutureBuilder<String>(
                      future:
                          _loadProfileImage(), // Panggil fungsi di dalam HomePage
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return const CircularProgressIndicator(
                            color: Color(0xFFE1A20B),
                          );
                        } else if (snapshot.hasData) {
                          final profilePictureUrl = snapshot.data!;
                          return CircleAvatar(
                            radius: 30,
                            backgroundImage: profilePictureUrl.isNotEmpty
                                ? NetworkImage(profilePictureUrl)
                                    as ImageProvider<Object>?
                                : const AssetImage(
                                    "assets/images/card/minji.jpg"),
                          );
                        } else {
                          return const CircleAvatar(
                            radius: 30,
                            backgroundImage:
                                AssetImage("assets/images/card/minji.jpg"),
                          );
                        }
                      },
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          username ?? "Loading...",
                          style: GoogleFonts.raleway(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "IDR $saldo",
                          style: GoogleFonts.openSans(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: 330,
                child: Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    "Now Playing",
                    style: GoogleFonts.raleway(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              FutureBuilder<List<Movie>>(
                  future: nowPlaying,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const CircularProgressIndicator(
                        color: Color(0xFFE1A20B),
                      );
                    } else if (snapshot.hasData) {
                      final movies = snapshot.data!;
                      return Container(
                        height: 156,
                        padding: const EdgeInsets.only(left: 20),
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (_, i) {
                            return MoviePoster(
                              //nama widget
                              movie: movies[i], //movies[i].nama dls
                            );
                            // .noRate();
                          },
                          itemCount: movies.length,
                        ),
                      );
                    } else {
                      return const Text("there is no data");
                    }
                  }),
              const SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "Movie Category",
                      style: GoogleFonts.raleway(
                          fontSize: 18, fontWeight: FontWeight.bold),
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
                          InkWell(
                            onTap: () {},
                            child: Container(
                              width: 50,
                              height: 50,
                              color: cardsColor,
                              child:
                                  Image.asset("assets/images/card/action.png"),
                            ),
                          ),
                          Text("Action",
                              style: GoogleFonts.raleway(
                                fontSize: 12,
                              ))
                        ],
                      ),
                      const SizedBox(width: 20),
                      Column(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              width: 50,
                              height: 50,
                              color: cardsColor,
                              child:
                                  Image.asset("assets/images/card/battle.png"),
                            ),
                          ),
                          Text("Battle",
                              style: GoogleFonts.raleway(
                                fontSize: 12,
                              ))
                        ],
                      ),
                      const SizedBox(width: 20),
                      Column(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              width: 50,
                              height: 50,
                              color: cardsColor,
                              child:
                                  Image.asset("assets/images/card/sci-fi.png"),
                            ),
                          ),
                          Text("Sci-fi",
                              style: GoogleFonts.raleway(
                                fontSize: 12,
                              ))
                        ],
                      ),
                      const SizedBox(width: 20),
                      Column(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              width: 50,
                              height: 50,
                              color: cardsColor,
                              child: Image.asset("assets/images/card/kids.png"),
                            ),
                          ),
                          Text("Fantasy",
                              style: GoogleFonts.raleway(
                                fontSize: 12,
                              ))
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                width: 360,
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Coming Soon",
                  style: GoogleFonts.raleway(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              FutureBuilder<List<Movie>>(
                future: comingSoon,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator(
                      color: Color(0xFFE1A20B),
                    );
                  } else if (snapshot.hasData) {
                    final movies = snapshot.data!;
                    return Container(
                      height: 200,
                      padding: const EdgeInsets.only(left: 20),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (_, i) {
                          return MovieComingPoster(
                            movie: movies[i],
                          );
                        },
                        itemCount: movies.length,
                      ),
                    );
                  } else {
                    return const Text("There is no data");
                  }
                },
              ),
              const SizedBox(height: 25),
              InkWell(
                onTap: () {},
                child: Stack(
                  children: [
                    SizedBox(
                      width: 300,
                      height: 100,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: Image.asset(
                          "assets/images/card/holiday-promo.png",
                          fit: BoxFit.fill,
                          color: Colors.black.withOpacity(0.4),
                          colorBlendMode: BlendMode.darken,
                        ),
                      ),
                    ),
                    Positioned(
                        left: 10,
                        top: 60,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Holiday Promo",
                                style: GoogleFonts.raleway(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: textColor)),
                            Text("Min. Four User        ",
                                style: GoogleFonts.raleway(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: textColor))
                          ],
                        )),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
