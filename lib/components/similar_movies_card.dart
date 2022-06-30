import 'package:flutter/material.dart';

class SmilarMoviesCard extends StatelessWidget {
  SmilarMoviesCard(
      {required this.movieTitle,
      required this.movieRRating,
      required this.movieGenre,
      required this.movieRating,
      required this.moviePoster});

  late String moviePoster;
  late String movieTitle;
  late String movieRRating;
  late String movieGenre;
  late String movieRating;

  @override
  Widget build(BuildContext context) {
    Color? greyColor = Colors.grey[700];
    return Row(
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 3.0),
              child: Image.asset(
                moviePoster,
                height: 150,
                width: 80,
              ),
            )
          ],
        ),
        Container(
          width: 100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                movieTitle,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                movieRRating,
                style: TextStyle(color: greyColor),
              ),
              Text(
                movieGenre,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: TextStyle(color: greyColor),
              ),
              Row(
                children: [
                  Text(
                    "$movieRating★  ",
                    style: TextStyle(color: greyColor),
                  ),
                  Text(
                    "\$3.99",
                    style: TextStyle(color: greyColor),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
