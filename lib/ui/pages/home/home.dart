import 'package:flutixapp/ui/pages/home/movie_details.dart';
import 'package:flutter/material.dart';
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
  List<Movie> movies = [
    Movie(
      id: 1,
      poster: "assets/images/card/avengers.png",
      judul: "Avengers",
      genre: "Action",
      rate: 7.0,
      storyLine: "A story about superheroes saving the world.",
    ),
    Movie(
      id: 2,
      poster: "assets/images/card/despicable-me.png",
      judul: "Despicable Me",
      genre: "Animation",
      rate: 8.5,
      storyLine: "Follow the adventures of Gru and the Minions.",
    ),
    Movie(
      id: 3,
      poster: "assets/images/card/monster.png",
      judul: "Monster, Inc.",
      genre: "Animation",
      rate: 8.0,
      storyLine: "Discover the world of monsters and laughter.",
    ),
    Movie(
      id: 4,
      poster: "assets/images/card/transformers.webp",
      judul: "Transformers",
      genre: "Action",
      rate: 10.0,
      storyLine: "Robots in disguise battle for Earth.",
    ),
  ];

  List<Movie> comingSoonMovies = [
    Movie(
      id: 5,
      poster: "assets/images/card/The-Lorax.png",
      judul: "The Lorax",
      genre: "Animation",
      rate: 0.0, // Atur sesuai kebutuhan
      storyLine: "Storyline for Title 1",
    ),
    Movie(
      id: 6,
      poster: "assets/images/card/Carl's-date.png",
      judul: "Carl's Date",
      genre: "Animation",
      rate: 0.0, // Atur sesuai kebutuhan
      storyLine: "Storyline for Title 2",
    ),
    Movie(
      id: 7,
      poster: "assets/images/card/Hotel.png",
      judul: "Hotel Transyalvania",
      genre: "Animation",
      rate: 0.0, // Atur sesuai kebutuhan
      storyLine: "Storyline for Title 2",
    ),
    Movie(
      id: 8,
      poster: "assets/images/card/up.jpeg",
      judul: "Up",
      genre: "Animation",
      rate: 0.0, // Atur sesuai kebutuhan
      storyLine: "Storyline for Title 2",
    ),
  ];

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
    Future<List<Movie>> comingSoon = Api.getMoviesNp(10);
    return Scaffold(
      backgroundColor: bgColor,
      body: ListView(
        children: [
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
                        return MoviePoster(
                          //nama widget
                          movie: movies[i], //movies[i].nama dls
                        ).noRate();
                      },
                      itemCount: movies.length,
                    ),
                  );
                } else {
                  return const Text("there is no data");
                }
              }),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 35.0, top: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const CircleAvatar(
                      radius: 30,
                      backgroundImage:
                          AssetImage("assets/images/card/minji.jpg"),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          username ?? "Loading...", // Tampilkan nama di sini
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          "IDR 500.000",
                          style: TextStyle(
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
                  child: const Text(
                    "Now Playing",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 140,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: movies.length,
                  itemBuilder: (context, index) {
                    Movie movie = movies[index];
                    double rating = movie.rate / 2;
                    int fullStars = rating.floor();
                    bool hasHalfStar = (rating - fullStars) > 0;

                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return movie_details();
                            },
                          ),
                        );
                      },
                      child: Stack(
                        children: [
                          Container(
                            width: 200,
                            height: 150,
                            margin: EdgeInsets.only(
                              left: index == 0 ? 40 : 20,
                              right: index == movies.length - 1 ? 40 : 0,
                            ),
                            child: Image.asset(
                              movie.poster,
                              fit: BoxFit.fill,
                              color: Colors.black.withOpacity(0.3),
                              colorBlendMode: BlendMode.darken,
                            ),
                          ),
                          Positioned(
                            left: index == 0 ? 50 : 30,
                            top: 100,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 200,
                                  child: Text(
                                    movie.judul,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: textColor,
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Row(
                                      children: List.generate(
                                        fullStars,
                                        (starIndex) {
                                          return Icon(
                                            Icons.star,
                                            color: textColor,
                                            size: 17,
                                          );
                                        },
                                      ),
                                    ),
                                    if (hasHalfStar)
                                      Icon(
                                        Icons.star_half,
                                        color: textColor,
                                        size: 17,
                                      ),
                                    const SizedBox(width: 5),
                                    Text(
                                      "${movie.rate}/10",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        color: textColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
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
                          const Text("Action"),
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
                          const Text("Battle"),
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
                          const Text("Sci-fi"),
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
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: comingSoonMovies.length,
                  itemBuilder: (context, index) {
                    Movie comingSoonMovie = comingSoonMovies[index];

                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return movie_details();
                            },
                          ),
                        );
                      },
                      child: Stack(
                        children: [
                          Container(
                            width: 150,
                            height: 200,
                            margin: EdgeInsets.only(
                              left: index == 0 ? 40 : 20,
                              right:
                                  index == comingSoonMovies.length - 1 ? 40 : 0,
                            ),
                            child: Image.asset(
                              comingSoonMovie.poster,
                              fit: BoxFit.fill,
                              color: Colors.black.withOpacity(0.2),
                              colorBlendMode: BlendMode.darken,
                            ),
                          ),
                          Positioned(
                            left: index == 0 ? 50 : 30,
                            top: 160,
                            child: Container(
                              width: 150,
                              child: Text(
                                comingSoonMovie.judul,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: textColor,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
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
