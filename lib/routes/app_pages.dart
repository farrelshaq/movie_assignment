import 'package:get/get.dart';
import 'package:movie_slash/modules/movie_list/pages/movei_list_page.dart';
<<<<<<< HEAD
=======
//import '../modules/movie_list/pages/movie_list_page.dart';
>>>>>>> 6cc1b09e38427604da8adb470faded4bebf831e5
import '../modules/movie_list/bindings/movie_list_binding.dart';
import '../modules/movie_detail/pages/movie_detail_page.dart';
import '../modules/movie_detail/bindings/movie_detail_binding.dart';
import 'app_routes.dart';

class AppPages {
  static const initial = AppRoutes.movieList;

  static final routes = [
    GetPage(
      name: AppRoutes.movieList,
<<<<<<< HEAD
      page: () => MovieListPage(),
=======
      page: () => const MovieListPage(),
>>>>>>> 6cc1b09e38427604da8adb470faded4bebf831e5
      binding: MovieListBinding(),
    ),
    GetPage(
      name: AppRoutes.movieDetail,
<<<<<<< HEAD
      page: () => MovieDetailPage(movie: Get.arguments),
=======
      page: () => MovieDetailPage(),
>>>>>>> 6cc1b09e38427604da8adb470faded4bebf831e5
      binding: MovieDetailBinding(),
    ),
  ];
}
