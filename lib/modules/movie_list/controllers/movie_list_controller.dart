import 'package:get/get.dart';
import 'package:movie_slash/data/models/movie_models.dart';
import 'package:movie_slash/data/services/tmdb_sevice.dart';

class MovieListController extends GetxController {
  final movies = <MovieModel>[].obs;
  final isLoading = false.obs;

  @override
  void onInit() {
    fetchMovies();
    super.onInit();
  }

  void fetchMovies() async {
    isLoading.value = true;
    try {
      final result = await TmdbService().getTrendingMovies();
      movies.assignAll(result);
    } catch (e) {
      print('Error fetching movies: $e');
    } finally {
      isLoading.value = false;
    }
  }
}
