// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutixapp/models/models.dart';
import 'package:flutixapp/services/services.dart';
import 'package:flutixapp/ui/pages/home/places_date.dart';
import 'package:flutixapp/ui/widgets/moviedetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class movie_details extends StatefulWidget {
  movie_details({super.key});

  @override
  State<movie_details> createState() => _movie_details_State();
}

class _movie_details_State extends State<movie_details> {
 
  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            FutureBuilder<List<Movie>>(
                  future: Api.getMovieDetails(2),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const CircularProgressIndicator(
                        color: Color(0xFFE1A20B),
                      );
                    } else if (snapshot.hasData) {
                      final movies = snapshot.data!;
                      return MovieDetails(
                        movie: movies[2]
                    );
                    } else {
                      return const Text("there is no data");
                    }
                  }),
          ],
        ),
      ),
    );
  }
}
