// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_google_play_movies_ui/common_widgets/not_implemented.dart';
import 'package:flutter_google_play_movies_ui/presentation/movie_detail_screen/rating_bar_indicator.dart';

class MovieRatingAndReviewSummary extends StatelessWidget {
  const MovieRatingAndReviewSummary({
    Key? key,
    required this.rating,
    required this.numberOfReviews,
    required this.googlePlayMovieColor,
  }) : super(key: key);

  final double rating;
  final String numberOfReviews;
  final Color googlePlayMovieColor;

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
                "Ratings and Review",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              IconButton(
                icon: const Icon(
                  Icons.arrow_forward,
                ),
                onPressed: () async {
                  await showNotImplementedAlertDialog(context);
                },
              ),
            ],
          ),
        ),
        TextButton(
          style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all(Colors.grey)),
          onPressed: () async {
            await showNotImplementedAlertDialog(context);
          },
          child: const Row(
            children: [
              Text("Ratings and reviews aren’t verified"),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.info)
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Column(
              children: [
                Text(
                  rating.toString(),
                  style: const TextStyle(
                      fontSize: 50, fontWeight: FontWeight.w500),
                ),
                Text(
                  '★ ★ ★ ★',
                  style: TextStyle(
                      color: googlePlayMovieColor, fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text('$numberOfReviews reviews',
                    style: TextStyle(color: Colors.grey[700], fontSize: 13))
              ],
            ),
            Column(
              children: [
                RatingBarIndicator(
                  width: 170,
                  color: googlePlayMovieColor,
                  leadingNumber: 5,
                ),
                RatingBarIndicator(
                  width: 50,
                  color: googlePlayMovieColor,
                  leadingNumber: 4,
                ),
                RatingBarIndicator(
                  width: 40,
                  color: googlePlayMovieColor,
                  leadingNumber: 3,
                ),
                RatingBarIndicator(
                  width: 20,
                  color: googlePlayMovieColor,
                  leadingNumber: 2,
                ),
                RatingBarIndicator(
                  width: 60,
                  color: googlePlayMovieColor,
                  leadingNumber: 1,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
