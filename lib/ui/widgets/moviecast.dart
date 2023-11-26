import 'package:flutixapp/models/models.dart';
import 'package:flutixapp/services/services.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class movieCast extends StatelessWidget {
  Cast cast;
  movieCast({Key? key, required this.cast}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            width: 80,
            height: 100,
            margin: EdgeInsets.only(left: 20.0, top: 10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                image: NetworkImage(Api.baseImageUrl + cast.foto),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 3),
          Container(
            width: 80,
            margin: EdgeInsets.only(left: 20),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Text(
                  _truncateText(cast.nama, 10),
                  style: GoogleFonts.raleway(
                    fontWeight: FontWeight.normal,
                    fontSize: 12,
                    color: Colors.black,
                  ),
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
    return '${text.substring(0, maxLength)}...';
  }
}
