// ignore_for_file: must_be_immutable

import 'package:flutixapp/ui/pages/home/movie_details.dart';
import 'package:flutixapp/ui/pages/home/places_date.dart';
import 'package:flutixapp/ui/widgets/bottomnav.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutixapp/models/models.dart';

class MovieDetails extends StatelessWidget {
  final Movie movie;
  Color textColor = const Color(0xFFF4EDE6);

  MovieDetails({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                Container(
                  width: lebar,
                  height: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/card/monsInc.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0, left: 20.0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.arrow_back_ios,
                              color: Color(0xFFE1A20B),
                              size: 32,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Monster Inc",
                  style: GoogleFonts.raleway(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 3),
                Text(
                  "Adventure - Indonesian",
                  style: GoogleFonts.raleway(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(height: 3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (int i = 0; i < 4; i++)
                      Icon(
                        Icons.star_rounded,
                        color: Colors.black,
                        size: 16,
                      ),
                    Icon(
                      Icons.star_half_rounded,
                      color: Colors.black,
                      size: 16,
                    ),
                    Text(
                      "  8 / 10",
                      style: GoogleFonts.openSans(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Text(
                        "StoryLine",
                        style: GoogleFonts.raleway(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Text(
                    "Sulli, raksasa dari perusahaan listrik menakutkan yang menemukan kasih sayang dalam diri Boo, seorang anak berusia dua tahun.",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.raleway(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Text(
                        "Cast",
                        style: GoogleFonts.raleway(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      for (int i = 0; i < 6; i++)
                        Container(
                          width: 80,
                          height: 80,
                          margin: EdgeInsets.only(left: 20.0, top: 10.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.grey,
                          ),
                        ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return placesdate();
                          },
                        ),
                        );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFE1A20B),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      minimumSize: Size(200, 50),
                    ),
                    child: Text(
                      "Continue to Book",
                      style: GoogleFonts.raleway(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            ],
        ),
      ),
    );
  }
}
      
  //   double rating = movie.rate / 2;
  //   int fullStars = rating.floor();
  //   bool hasHalfStar = (rating - fullStars) > 0;

  //   return InkWell(
  //     onTap: () {
  //       Navigator.push(
  //         context,
  //         MaterialPageRoute(
  //           builder: (context) {
  //             return BottomNav();
  //           },
  //         ),
  //       );
  //     },
  //     child: Column(
  //       children: [
  //         Container(
  //           width: 230,
  //           height: 300,
  //           margin: const EdgeInsets.only(right: 20),
  //           child: Stack(
  //             children: [
  //               Image.network(
  //                 movie.poster,
  //                 fit: BoxFit.fill,
  //                 color: Colors.black.withOpacity(0.3),
  //                 colorBlendMode: BlendMode.darken,
  //               ),
  //               Padding(
  //                 padding: const EdgeInsets.only(top: 20.0, left: 20.0),
  //                 child: Align(
  //                   alignment: Alignment.topLeft,
  //                   child: InkWell(
  //                     onTap: () {
  //                       Navigator.pop(context);
  //                     },
  //                     child: Icon(
  //                       Icons.arrow_back_ios,
  //                       color: Color(0xFFE1A20B),
  //                       size: 32,
  //                     ),
  //                   ),
  //                 ),
  //               ),
  //             ],
  //           ),
  //         ),
  //         SizedBox(height: 20),
  //         Text(
  //           _truncateText(movie.judul, 18),
  //           style: GoogleFonts.raleway(
  //             fontWeight: FontWeight.bold,
  //             fontSize: 18,
  //             color: textColor,
  //           ),
  //         ),
  //         SizedBox(height: 3),
  //         Text(
  //           _truncateText(movie.judul, 18),
  //           style: GoogleFonts.raleway(
  //             fontWeight: FontWeight.bold,
  //             fontSize: 18,
  //             color: textColor,
  //           ),
  //         ),
  //         SizedBox(height: 3),
  //         Row(
  //                 crossAxisAlignment: CrossAxisAlignment.center,
  //                 children: [
  //                   Row(
  //                     children: List.generate(
  //                       fullStars,
  //                       (starIndex) {
  //                         return Icon(
  //                           Icons.star,
  //                           color: textColor,
  //                           size: 17,
  //                         );
  //                       },
  //                     ),
  //                   ),
  //                   if (hasHalfStar)
  //                     Icon(
  //                       Icons.star_half,
  //                       color: textColor,
  //                       size: 17,
  //                     ),
  //                   const SizedBox(width: 5),
  //                   Text(
  //                     "${movie.rate.toStringAsFixed(1)}/10",
  //                     style: GoogleFonts.openSans(
  //                       fontWeight: FontWeight.bold,
  //                       fontSize: 15,
  //                       color: textColor,
  //                     ),
  //                   ),
  //                 ],
  //               ),
  //         SizedBox(height: 20),
  //         Row(
  //           mainAxisAlignment: MainAxisAlignment.start,
  //           children: [
  //             Padding(
  //               padding: EdgeInsets.only(left: 20.0),
  //               child: Text(
  //                 "StoryLine",
  //                 style: GoogleFonts.raleway(
  //                   color: Colors.black,
  //                   fontSize: 18,
  //                   fontWeight: FontWeight.normal,
  //                 ),
  //               ),
  //             ),
  //           ],
  //         ),
  //         SizedBox(height: 10),
  //         Padding(
  //           padding: const EdgeInsets.only(left: 20.0, right: 20.0),
  //           child: Text(
  //           _truncateText(movie.storyLine, 80),
  //           style: GoogleFonts.raleway(
  //             fontWeight: FontWeight.bold,
  //             fontSize: 18,
  //             color: textColor,
  //           ),
  //         ),
  //         ),
  //         SizedBox(height: 20),
  //         Row(
  //           children: [
  //             Padding(
  //               padding: EdgeInsets.only(left: 20.0),
  //               child: Text(
  //                 "Cast",
  //                 style: GoogleFonts.raleway(
  //                   color: Colors.black,
  //                   fontSize: 18,
  //                   fontWeight: FontWeight.normal,
  //                 ),
  //               ),
  //             ),
  //           ],
  //         ),
  //         SingleChildScrollView(
  //           scrollDirection: Axis.horizontal,
  //           child: Row(
  //             mainAxisAlignment: MainAxisAlignment.start,
  //             children: [
  //               for (int i = 0; i < 6; i++)
  //                 Container(
  //                   width: 80,
  //                   height: 80,
  //                   margin: EdgeInsets.only(left: 20.0, top: 10.0),
  //                   decoration: BoxDecoration(
  //                     borderRadius: BorderRadius.circular(5),
  //                     color: Colors.grey,
  //                   ),
  //                 ),
  //             ],
  //           ),
  //         ),
  //         Padding(
  //           padding: const EdgeInsets.all(50.0),
  //           child: ElevatedButton(
  //             onPressed: () {
  //               Navigator.push(
  //                 context,
  //                 MaterialPageRoute(
  //                   builder: (context) {
  //                     return placesdate();
  //                   },
  //                 ),
  //               );
  //             },
  //             style: ElevatedButton.styleFrom(
  //               backgroundColor: Color(0xFFE1A20B),
  //               foregroundColor: Colors.white,
  //               shape: RoundedRectangleBorder(
  //                 borderRadius: BorderRadius.circular(10.0),
  //               ),
  //               minimumSize: Size(200, 50),
  //             ),
  //             child: Text(
  //               "Continue to Book",
  //               style: GoogleFonts.raleway(
  //                 fontSize: 16,
  //                 fontWeight: FontWeight.bold,
  //               ),
  //             ),
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  // String _truncateText(String text, int maxLength) {
  //   if (text.length <= maxLength) {
  //     return text;
  //   }
  //   return '${text.substring(0, maxLength)}...';
  // }
  
   