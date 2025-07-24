import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_slash/data/models/movie_models.dart';
//import '../../../../data/models/movie_model.dart';

class MovieDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MovieModel movie = Get.arguments;

    return Scaffold(
      appBar: AppBar(title: Text(movie.title)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(movie.fullPosterPath),
            const SizedBox(height: 16),
            Text(movie.title, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text('Rating: ${movie.voteAverage}'),
            Text('Release Date: ${movie.releaseDate}'),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(movie.overview),
            ),
          ],
        ),
      ),
    );
  }
}
