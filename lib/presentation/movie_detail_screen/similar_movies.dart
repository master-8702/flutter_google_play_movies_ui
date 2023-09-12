import 'package:flutter/material.dart';

import 'package:flutter_google_play_movies_ui/common_widgets/not_implemented.dart';
import 'package:flutter_google_play_movies_ui/sample_movies.dart';
import 'package:flutter_google_play_movies_ui/presentation/movie_detail_screen/similar_movies_card.dart';

class SimilarMovies extends StatelessWidget {
  const SimilarMovies({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Similar Movies",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              IconButton(
                  onPressed: () async {
                    await showNotImplementedAlertDialog(context);
                  },
                  icon: const Icon(Icons.arrow_forward)),
            ],
          ),
        ),
        // will be replaced with GridView
        Column(
          children: [
            Row(
              children: [
                SimilarMoviesCard(movie: movies[1]),
                SimilarMoviesCard(movie: movies[2]),
              ],
            ),
            Row(
              children: [
                SimilarMoviesCard(movie: movies[3]),
                SimilarMoviesCard(movie: movies[4]),
              ],
            )
          ],
        )
      ],
    );
  }
}
