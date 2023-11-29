// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_constructors_in_immutables, must_be_immutable

import 'package:flutixapp/models/models.dart';
import 'package:flutixapp/services/services.dart';
import 'package:flutixapp/ui/widgets/moviedetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class movie_details extends StatelessWidget {
  Movie movie;
  movie_details({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            FutureBuilder<List<Movie>>(
              future: Api.getMovieDetails(movie.id),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                    heightFactor: 25,
                    child: CircularProgressIndicator(
                      color: Color(0xFFE1A20B),
                    ),
                  );
                } else if (snapshot.hasData) {
                  final movies = snapshot.data!;
                  return MovieDetails(
                    movie: movies.first,
                  );
                } else if (snapshot.hasError) {
                  return Text("Error: ${snapshot.error}");
                } else {
                  return Text("There is no data");
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
