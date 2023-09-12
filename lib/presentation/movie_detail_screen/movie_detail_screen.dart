import 'package:flutter/material.dart';

import 'package:flutter_google_play_movies_ui/presentation/movie_detail_screen/movie_description.dart';
import 'package:flutter_google_play_movies_ui/presentation/movie_detail_screen/movie_detail.dart';
import 'package:flutter_google_play_movies_ui/presentation/movie_detail_screen/movie_info.dart';
import 'package:flutter_google_play_movies_ui/presentation/movie_detail_screen/movie_poster.dart';
import 'package:flutter_google_play_movies_ui/presentation/movie_detail_screen/movie_price.dart';
import 'package:flutter_google_play_movies_ui/presentation/movie_detail_screen/movie_rating_summary.dart';
import 'package:flutter_google_play_movies_ui/presentation/movie_detail_screen/movie_review.dart';
import 'package:flutter_google_play_movies_ui/presentation/movie_detail_screen/movie_title.dart';
import 'package:flutter_google_play_movies_ui/common_widgets/not_implemented.dart';
import 'package:flutter_google_play_movies_ui/presentation/movie_detail_screen/rate_movie.dart';
import 'package:flutter_google_play_movies_ui/sample_movies.dart';
import 'package:flutter_google_play_movies_ui/presentation/movie_detail_screen/similar_movies.dart';

class MovieDetailPage extends StatefulWidget {
  const MovieDetailPage({super.key});

  @override
  State<MovieDetailPage> createState() => _MovieDetailPageState();
}

class _MovieDetailPageState extends State<MovieDetailPage> {
  Color googlePlayMovieColor = Colors.pink;
  final movie = movies[0];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // movie poster
                  MoviePoster(
                      posterUrl: movie.posterUrl!,
                      trailerUrl: movie.trailerUrl!),
                  MovieTitle(title: movie.title),
                  MovieDetail(
                    releaseDate: movie.releaseDate,
                    rated: movie.rated ?? 'PG-12',
                    duration: movie.duration,
                  ),
                  MoviePrice(
                      sellPrice: movie.sellPrice,
                      rentPrice: movie.rentPrice ?? 0.0),
                  const Divider(
                    thickness: 2,
                  ),
                  MovieInfo(
                      numberOfReviews: movie.numberOfReviews!,
                      rating: movie.rating.toString(),
                      category: movie.category,
                      rottenTomatoRating: movie.rottenTomatoRating.toString()),
                  const Divider(
                    thickness: 2,
                  ),
                  MovieDescription(description: movie.description),

                  const SizedBox(
                    height: 30,
                  ),

                  MovieRatingAndReviewSummary(
                      rating: movie.rating,
                      numberOfReviews: movie.numberOfReviews!,
                      googlePlayMovieColor: googlePlayMovieColor),
                  const SizedBox(
                    height: 30,
                  ),
                  const MovieReview(),
                  const MovieReview(),
                  const MovieReview(),
                  TextButton(
                    onPressed: () async {
                      await showNotImplementedAlertDialog(context);
                    },
                    child: Text(
                      "See all reviews",
                      style: TextStyle(
                          color: googlePlayMovieColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 18),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  RateMovie(googlePlayMovieColor: googlePlayMovieColor),
                  const SizedBox(
                    height: 30,
                  ),
                  const SimilarMovies(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
