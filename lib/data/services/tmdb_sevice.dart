import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:movie_slash/data/models/movie_models.dart';

class TMDBService {
  final String _apiKey = '4d17eb63d2e1c7804eadfd0dac48d881'; // hanya API key-nya saja
  final String _baseUrl = 'https://api.themoviedb.org/3';

  Future<List<MovieModel>> getTrendingMovies() async {
    final response = await http.get(
      Uri.parse('$_baseUrl/trending/movie/week?api_key=$_apiKey'),
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return List<MovieModel>.from(
        data['results'].map((x) => MovieModel.fromJson(x)),
      );
    } else {
      throw Exception('Failed to load movies');
    }
  }
}
