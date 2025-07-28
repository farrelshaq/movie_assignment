import 'package:get/get.dart';
import 'package:movie_slash/data/models/movie_models.dart';
import 'package:movie_slash/data/services/tmdb_sevice.dart';
<<<<<<< HEAD
=======
//import '../../../../data/models/movie_model.dart';
//import '../../../../data/services/tmdb_service.dart';
>>>>>>> 6cc1b09e38427604da8adb470faded4bebf831e5

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
<<<<<<< HEAD
      final result = await TmdbService().getTrendingMovies();
=======
      final result = await TMDBService().getTrendingMovies();
>>>>>>> 6cc1b09e38427604da8adb470faded4bebf831e5
      movies.assignAll(result);
    } catch (e) {
      print('Error fetching movies: $e');
    } finally {
      isLoading.value = false;
    }
  }
}
