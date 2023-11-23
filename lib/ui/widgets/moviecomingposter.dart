// moviecomingposter.dart
import 'package:flutixapp/ui/pages/home/movie_details.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutixapp/models/models.dart';

class MovieComingPoster extends StatelessWidget {
  final Movie movie;
  Color textColor = const Color(0xFFF4EDE6);

  MovieComingPoster({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            margin: const EdgeInsets.only(right: 20),
            child: Image.network(
              movie.poster,
              fit: BoxFit.fill,
              color: Colors.black.withOpacity(0.3),
              colorBlendMode: BlendMode.darken,
            ),
          ),
          Positioned(
            left: 30,
            top: 145,
            child: Container(
              width: 150,
              child: Text(
                _truncateText(movie.judul, 18),
                style: GoogleFonts.raleway(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: textColor,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
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
    return text.substring(0, maxLength) + '...';
  }
}
