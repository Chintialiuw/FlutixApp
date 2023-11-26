// ignore_for_file: must_be_immutable

import 'package:flutixapp/ui/pages/home/movie_details.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutixapp/models/models.dart';

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
              return movie_details(movie: movie);
            },
          ),
        );
      },
      child: Stack(
        children: [
          Container(
            width: 230,
            height: 150,
            margin: const EdgeInsets.only(right: 20),
            child: Image.network(
              movie.poster,
              fit: BoxFit.fill,
              color: Colors.black.withOpacity(0.3),
              colorBlendMode: BlendMode.darken,
            ),
          ),
          Positioned(
            left: 10,
            top: 95,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 200,
                  child: Text(
                    _truncateText(movie.judul, 20),
                    style: GoogleFonts.raleway(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: textColor,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
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
                      "${movie.rate.toStringAsFixed(1)}/10",
                      style: GoogleFonts.openSans(
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
  }

  String _truncateText(String text, int maxLength) {
    if (text.length <= maxLength) {
      return text;
    }
    return '${text.substring(0, maxLength)}...';
  }
}
