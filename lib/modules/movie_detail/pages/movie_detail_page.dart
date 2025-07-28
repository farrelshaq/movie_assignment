import 'package:flutter/material.dart';
import 'package:movie_slash/data/models/movie_models.dart';

class MovieDetailPage extends StatelessWidget {
  final MovieModel movie;

  const MovieDetailPage({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.85,
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(movie.fullPosterPath, height: 300),
              ),
            ),
            const SizedBox(height: 16),
            Text(movie.title, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white)),
            const SizedBox(height: 8),
            Text("Rating: ${movie.voteAverage}/10", style: const TextStyle(color: Colors.white70)),
            const SizedBox(height: 4),
            Text("Release Date: ${movie.releaseDate}", style: const TextStyle(color: Colors.white70)),
            const SizedBox(height: 8),
            const Text("Overview", style: TextStyle(fontSize: 18, color: Colors.white)),
            const SizedBox(height: 4),
            Text(movie.overview, style: const TextStyle(color: Colors.white70)),
          ],
        ),
      ),
    );
  }
}
