class MovieModel {
  final int id;
  final String title;
  final String overview;
  final String posterPath;
<<<<<<< HEAD
  final String backdropPath;
  final double voteAverage;
  final String releaseDate;
  final List<dynamic> genreIds;
=======
  final String releaseDate;
  final double voteAverage;
  final List<int> genreIds;
>>>>>>> 6cc1b09e38427604da8adb470faded4bebf831e5

  MovieModel({
    required this.id,
    required this.title,
    required this.overview,
    required this.posterPath,
<<<<<<< HEAD
    required this.backdropPath,
    required this.voteAverage,
    required this.releaseDate,
=======
    required this.releaseDate,
    required this.voteAverage,
>>>>>>> 6cc1b09e38427604da8adb470faded4bebf831e5
    required this.genreIds,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) {
    return MovieModel(
      id: json['id'],
      title: json['title'] ?? '',
      overview: json['overview'] ?? '',
      posterPath: json['poster_path'] ?? '',
<<<<<<< HEAD
      backdropPath: json['backdrop_path'] ?? '',
      voteAverage: (json['vote_average'] ?? 0).toDouble(),
      releaseDate: json['release_date'] ?? '',
      genreIds: json['genre_ids'] ?? [],
    );
  }

  String get fullPosterPath => 'https://image.tmdb.org/t/p/w500$posterPath';
  String get fullBackdropPath => 'https://image.tmdb.org/t/p/w780$backdropPath';
=======
      releaseDate: json['release_date'] ?? '',
      voteAverage: (json['vote_average'] ?? 0).toDouble(),
      genreIds: List<int>.from(json['genre_ids'] ?? []),
    );
  }

  String get fullPosterPath =>
    posterPath != null ? 'https://image.tmdb.org/t/p/w500$posterPath' : '';

>>>>>>> 6cc1b09e38427604da8adb470faded4bebf831e5
}
