class ApiConstants {
  static const String tmdbBaseUrl = "https://api.themoviedb.org/3/";
  static const String dummyJsonBaseUrl = "https://dummyjson.com/";

  // TMDB Endpoints
  static const String trendingMovies = "trending/movie/day";
  static const String popularMovies = "movie/popular";
  static const String topRatedMovies = "movie/top_rated";
  static const String upcomingMovies = "movie/upcoming";
  static const String movieDetails = "movie/"; // + {movie_id}

  // DummyJSON Auth Endpoints
  static const String login = "auth/login";
  static const String register = "users/add";
}

class ApiKeys {
  // TODO: Add your TMDB API Key here
  static const String tmdbApiKey = "YOUR_TMDB_API_KEY_HERE";
}
