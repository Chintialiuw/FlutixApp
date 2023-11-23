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
  List<Movie> movies = [];

  List<Movie> comingSoonMovies = [];

  @override
  void initState() {
    super.initState();
    loadNama(); // Memuat nama saat halaman dimuat
  }

  Future<void> loadNama() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      username = prefs.getString('nama') ??
          ""; // Mendapatkan nama dari SharedPreferences
    });
  }

  @override
  Widget build(BuildContext context) {
    Future<List<Movie>> nowPlaying = Api.getMoviesNp(5);
    Future<List<Movie>> comingSoon = Api.getMoviesNp(5);
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
                    const CircleAvatar(
                      radius: 30,
                      backgroundImage:
                          AssetImage("assets/images/card/minji.jpg"),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          username ?? "Loading...", // Tampilkan nama di sini
                          style: GoogleFonts.raleway(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "IDR 500.000",
                          style: GoogleFonts.openSans(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: 330,
                child: Container(
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
                      return const CircularProgressIndicator();
                    } else if (snapshot.hasData) {
                      final movies = snapshot.data!;
                      return Container(
                        height: 256,
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
              // SizedBox(
              //   height: 140,
              //   child: ListView.builder(
              //     scrollDirection: Axis.horizontal,
              //     itemCount: movies.length,
              //     itemBuilder: (context, index) {
              //       Movie movie = movies[index];
              //       double rating = movie.rate / 2;
              //       int fullStars = rating.floor();
              //       bool hasHalfStar = (rating - fullStars) > 0;

              //       return InkWell(
              //         onTap: () {
              //           Navigator.push(
              //             context,
              //             MaterialPageRoute(
              //               builder: (context) {
              //                 return movie_details();
              //               },
              //             ),
              //           );
              //         },
              //         child: Stack(
              //           children: [
              //             Container(
              //               width: 200,
              //               height: 170,
              //               margin: EdgeInsets.only(
              //                 left: index == 0 ? 20 : 20,
              //                 right: index == movies.length - 1 ? 40 : 0,
              //               ),
              //               child: Image.asset(
              //                 movie.poster,
              //                 fit: BoxFit.fill,
              //                 color: Colors.black.withOpacity(0.3),
              //                 colorBlendMode: BlendMode.darken,
              //               ),
              //             ),
              //             Positioned(
              //               left: index == 0 ? 30 : 30,
              //               top: 90,
              //               child: Column(
              //                 crossAxisAlignment: CrossAxisAlignment.start,
              //                 children: [
              //                   Container(
              //                     width: 200,
              //                     child: Text(
              //                       movie.judul,
              //                       style: GoogleFonts.raleway(
              //                         fontWeight: FontWeight.bold,
              //                         fontSize: 20,
              //                         color: textColor,
              //                       ),
              //                     ),
              //                   ),
              //                   Row(
              //                     children: [
              //                       Row(
              //                         children: List.generate(
              //                           fullStars,
              //                           (starIndex) {
              //                             return Icon(
              //                               Icons.star,
              //                               color: textColor,
              //                               size: 17,
              //                             );
              //                           },
              //                         ),
              //                       ),
              //                       if (hasHalfStar)
              //                         Icon(
              //                           Icons.star_half,
              //                           color: textColor,
              //                           size: 17,
              //                         ),
              //                       const SizedBox(width: 5),
              //                       Text(
              //                         "${movie.rate}/10",
              //                         style: GoogleFonts.openSans(
              //                           fontWeight: FontWeight.bold,
              //                           fontSize: 15,
              //                           color: textColor,
              //                         ),
              //                       ),
              //                     ],
              //                   ),
              //                 ],
              //               ),
              //             ),
              //           ],
              //         ),
              //       );
              //     },
              //   ),
              // ),
              SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 42),
                    child: Text(
                      "Movie Category",
                      style: GoogleFonts.raleway(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
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
                height: 20,
              ),
              FutureBuilder<List<Movie>>(
                future: comingSoon,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator();
                  } else if (snapshot.hasData) {
                    final movies = snapshot.data!;
                    return Container(
                      height: 256,
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
              const SizedBox(height: 30),
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
                          children: [
                            Text("Holiday Promo",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: textColor)),
                            Text("Min. Four User        ",
                                style: TextStyle(
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
