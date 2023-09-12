import 'package:flutter/material.dart';

import 'package:flutter_google_play_movies_ui/domain/movie.dart';
import 'package:flutter_google_play_movies_ui/common_widgets/not_implemented.dart';

class SimilarMoviesCard extends StatelessWidget {
  const SimilarMoviesCard({
    Key? key,
    required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    Color? greyColor = Colors.grey[700];
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () async {
        await showNotImplementedAlertDialog(context);
      },
      child: Row(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 3.0),
                child: Image.asset(
                  movie.posterUrl!,
                  height: 150,
                  width: 80,
                ),
              )
            ],
          ),
          SizedBox(
            width: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  movie.title,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: const TextStyle(fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  movie.rated!,
                  style: TextStyle(color: greyColor),
                ),
                Text(
                  movie.genre.toString(),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: TextStyle(color: greyColor),
                ),
                Row(
                  children: [
                    Text(
                      "${movie.rating}★  ",
                      style: TextStyle(color: greyColor),
                    ),
                    Text(
                      "\$${movie.rentPrice}",
                      style: TextStyle(color: greyColor),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
