part of 'models.dart';

class Movie {
  int id;
  String poster;
  String judul;
  List<String> genre;
  double rate;
  String? language;
  String storyLine;
  List<Cast>? listCast;

  Movie({
    required this.id,
    required this.poster,
    required this.judul,
    required this.genre,
    required this.rate,
    this.language,
    required this.storyLine,
    this.listCast,
  });

  String languageStr() {
    switch (language) {
      case 'ja':
        return "Japanese";
      case 'id':
        return "Indonesian";
      case 'ko':
        return "Korean";
      case 'en':
        return "English";
    }
    return "None";
  }
  
}

