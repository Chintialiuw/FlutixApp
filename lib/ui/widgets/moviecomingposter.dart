// moviecomingposter.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutixapp/models/models.dart';

// ignore: must_be_immutable
class MovieComingPoster extends StatelessWidget {
  final Movie movie;

  Color textColor = const Color(0xFFF4EDE6);

  MovieComingPoster({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Tindakan ketika poster "coming soon" ditekan
      },
      child: Stack(
        children: [
          Container(
            width: 150,
            height: 200,
            margin: const EdgeInsets.only(right: 20),
            child: Image.asset(
              movie.poster,
              fit: BoxFit.fill,
              color: Colors.black.withOpacity(0.2),
              colorBlendMode: BlendMode.darken,
            ),
          ),
          Positioned(
            left: 30,
            top: 145,
            child: Container(
              width: 150,
              child: Text(
                movie.judul,
                style: GoogleFonts.raleway(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: textColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
