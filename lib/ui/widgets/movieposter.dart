// movieposter.dart
import 'package:flutixapp/ui/pages/home/movie_details.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutixapp/models/models.dart';

// ignore: must_be_immutable
class MoviePoster extends StatelessWidget {
  final Movie movie;

  Color textColor = const Color(0xFFF4EDE6);

  MoviePoster({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            height: 170,
            margin: const EdgeInsets.only(right: 20),
            child: Image.asset(
              movie.poster,
              fit: BoxFit.fill,
              color: Colors.black.withOpacity(0.3),
              colorBlendMode: BlendMode.darken,
            ),
          ),
          Positioned(
            left: 30,
            top: 90,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 200,
                  child: Text(
                    movie.judul,
                    style: GoogleFonts.raleway(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: textColor, // Use your desired text color
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
                      style: GoogleFonts.openSans(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: textColor, // Use your desired text color
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
  }
}
