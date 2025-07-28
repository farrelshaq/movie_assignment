import 'package:flutter/material.dart';
import 'package:get/get.dart';
<<<<<<< HEAD
import 'package:movie_slash/data/models/movie_models.dart';
import 'package:movie_slash/data/services/tmdb_sevice.dart';
import '../../movie_detail/pages/movie_detail_page.dart';

class MovieListPage extends StatefulWidget {
  const MovieListPage({super.key});

  @override
  State<MovieListPage> createState() => _MovieListPageState();
}

class _MovieListPageState extends State<MovieListPage> {
  final TmdbService _service = TmdbService();
  List<MovieModel> movies = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadMovies();
  }

  Future<void> _loadMovies() async {
    try {
      final fetchedMovies = await _service.fetchUpcomingMovies();
      setState(() {
        movies = fetchedMovies;
        isLoading = false;
      });
    } catch (e) {
      debugPrint('Error loading movies: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    final heroMovie = movies[0];

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: ListView(
          children: [
            Stack(
              children: [
                Image.network(heroMovie.fullBackdropPath, width: double.infinity, height: 400, fit: BoxFit.cover),
                Container(
                  width: double.infinity,
                  height: 400,
                  color: Colors.black.withOpacity(0.5),
                ),
                Positioned(
                  left: 16,
                  bottom: 20,
                  right: 16,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(heroMovie.title,
                          style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white)),
                      const SizedBox(height: 8),
                      Text(heroMovie.overview, maxLines: 3, overflow: TextOverflow.ellipsis,
                          style: const TextStyle(color: Colors.white70)),
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          const SizedBox(width: 10),
                          OutlinedButton(
                            onPressed: () => _showMovieDetail(heroMovie),
                            child: const Text('Details', style: TextStyle(color: Colors.white)),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text("Trending Movies", style: TextStyle(color: Colors.white, fontSize: 20)),
            ),
            SizedBox(
              height: 270,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: movies.length,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                separatorBuilder: (_, __) => const SizedBox(width: 12),
                itemBuilder: (context, index) {
                  final movie = movies[index];
                  return GestureDetector(
                    onTap: () => _showMovieDetail(movie),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(movie.fullPosterPath, height: 200),
                        ),
                        const SizedBox(height: 8),
                        SizedBox(
                          width: 120,
                          child: Text(
                            movie.title,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showMovieDetail(MovieModel movie) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.black87,
      builder: (_) => MovieDetailPage(movie: movie),
=======
import '../controllers/movie_list_controller.dart';
import '../../movie_detail/pages/movie_detail_page.dart';
import '../../../routes/app_routes.dart';

class MovieListPage extends StatelessWidget {
  const MovieListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<MovieListController>();

    return Scaffold(
      appBar: AppBar(title: const Text('Movie Slash')),
      body: Obx(() {
        if (controller.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }
        return ListView.builder(
          itemCount: controller.movies.length,
          itemBuilder: (context, index) {
            final movie = controller.movies[index];
            return ListTile(
              leading: Image.network(movie.fullPosterPath, width: 50),
              title: Text(movie.title),
              subtitle: Text('Rating: ${movie.voteAverage}'),
              onTap: () {
                Get.toNamed(AppRoutes.movieDetail, arguments: movie);
              },
            );
          },
        );
      }),
>>>>>>> 6cc1b09e38427604da8adb470faded4bebf831e5
    );
  }
}
