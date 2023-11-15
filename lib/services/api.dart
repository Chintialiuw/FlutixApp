//fungsi untuk ngambil data movie dari the movie database
part of 'services.dart';

class Api {
  static String apikey = '4263e4041d40fe8c9c9a15665a363a16';

  static Future<List<Movie>> getMoviesNp(int count) async {
    final response = await http.get(Uri.parse(
        "https://api.themoviedb.org/3/movie/now_playing?page=8&api_key=$apikey"));

    List<Movie> movies = [];
    if (response.statusCode == 200) {
      var getNowplaying = json.decode(response.body) as Map<String, dynamic>;
      var results = getNowplaying["results"];
      // String finish = getNowplaying["dates"]["maximum"];

      for (int i = 0; i < count; i++) {
        // String start = getNowplaying["results"][i]["release_date"];

        movies.add(Movie(
          id: results[i]["id"],
          poster: results[i]["poster_path"],
          judul: results[i]["title"],
          genre: results[i]["genre_ids"],
          rate: results[i]["vote_average"],
          storyLine: results[i]["overview"],
        ));
      }
    }
    return movies;
  }
}
