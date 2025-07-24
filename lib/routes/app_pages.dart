import 'package:get/get.dart';
import 'package:movie_slash/modules/movie_list/pages/movei_list_page.dart';
//import '../modules/movie_list/pages/movie_list_page.dart';
import '../modules/movie_list/bindings/movie_list_binding.dart';
import '../modules/movie_detail/pages/movie_detail_page.dart';
import '../modules/movie_detail/bindings/movie_detail_binding.dart';
import 'app_routes.dart';

class AppPages {
  static const initial = AppRoutes.movieList;

  static final routes = [
    GetPage(
      name: AppRoutes.movieList,
      page: () => const MovieListPage(),
      binding: MovieListBinding(),
    ),
    GetPage(
      name: AppRoutes.movieDetail,
      page: () => MovieDetailPage(),
      binding: MovieDetailBinding(),
    ),
  ];
}
