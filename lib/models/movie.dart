part of 'models.dart';

class Movie {
  int id;
  String poster;
  String judul;
  String genre;
  double rate;
  String storyLine;
  List<Cast>? listCast;

  Movie({
    required this.id,
    required this.poster,
    required this.judul,
    required this.genre,
    required this.rate,
    required this.storyLine,
    this.listCast,
  });
}
