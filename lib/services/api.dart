//fungsi untuk ngambil data movie dari the movie database
part of 'services.dart';

class Api {
  static String apiKey = '4263e4041d40fe8c9c9a15665a363a16';
  static String baseUrl = 'https://api.themoviedb.org/3';
  static String baseImageUrl = 'https://image.tmdb.org/t/p/w500';

  static Future<List<Movie>> getMovies(String listType, int count) async {
    String endpoint;
    if (listType == 'now_playing') {
      endpoint = 'movie/now_playing';
    } else if (listType == 'upcoming') {
      endpoint = 'movie/upcoming';
    } else {
      throw ArgumentError('Invalid list type: $listType');
    }

    final response =
        await http.get(Uri.parse('$baseUrl/$endpoint?page=1&api_key=$apiKey'));

    List<Movie> movies = [];
    if (response.statusCode == 200) {
      var getMovies = json.decode(response.body) as Map<String, dynamic>;
      var results = getMovies["results"];

      for (int i = 0; i < count; i++) {
        List<String> genre = [];
        for (int j = 0; j < results[i]["genre_ids"].length; j++) {
          final id = results[i]["genre_ids"][j];
          final response = await http
              .get(Uri.parse('$baseUrl/genre/$id?page=1&api_key=$apiKey'));
          var resultsGenre = json.decode(response.body) as Map<String, dynamic>;
          genre.add(resultsGenre["name"]);
        }

        // Mendapatkan URL lengkap gambar poster
        String posterPath = results[i]["poster_path"];
        String posterUrl = '$baseImageUrl$posterPath';

        // Format rating dengan satu angka di belakang koma
        double rawRating = results[i]["vote_average"].toDouble();
        String formattedRating = rawRating.toStringAsFixed(1);

        movies.add(Movie(
          id: results[i]["id"],
          poster: posterUrl,
          judul: results[i]["title"],
          genre: genre,
          rate: double.parse(formattedRating),
          storyLine: results[i]["overview"],
        ));
      }
    }
    return movies;
  }
}
