import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
    );
  }
}
