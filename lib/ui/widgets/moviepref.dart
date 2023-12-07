import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GenreContainer extends StatelessWidget {
  final String imagePath;
  final String label;
  final Color textColor;
  final VoidCallback onTap;

  const GenreContainer({
    required this.imagePath,
    required this.label,
    required this.textColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 30),
      child: ColorFiltered(
        colorFilter: ColorFilter.mode(
          const Color.fromARGB(255, 0, 0, 0).withOpacity(0.2),
          BlendMode.darken,
        ),
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            width: 150,
            height: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Text(
                label,
                style: GoogleFonts.raleway(
                  color: textColor,
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class LanguageContainer extends StatelessWidget {
  final String imagePath;
  final String label;
  final Color textColor;
  final VoidCallback onTap;

  const LanguageContainer({
    required this.imagePath,
    required this.label,
    required this.textColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 30),
      child: ColorFiltered(
        colorFilter: ColorFilter.mode(
          const Color.fromARGB(255, 0, 0, 0).withOpacity(0.3),
          BlendMode.darken,
        ),
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            width: 150,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Text(
                label,
                style: GoogleFonts.raleway(
                  color: textColor,
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;

  const TextWidget({
    required this.text,
    required this.fontSize,
    required this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 30),
      child: Text(
        text,
        style: GoogleFonts.raleway(
          fontSize: fontSize,
          color: Colors.black,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
