import 'package:flutter/material.dart';

import 'package:flutter_google_play_movies_ui/common_widgets/not_implemented.dart';

class MovieInfo extends StatelessWidget {
  const MovieInfo({
    Key? key,
    required this.numberOfReviews,
    required this.rating,
    required this.category,
    required this.rottenTomatoRating,
  }) : super(key: key);

  final String numberOfReviews;
  final String rating;
  final String category;
  final String rottenTomatoRating;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: _CustomElevatedButton(
            // text: '234reviews',
            text: '$numberOfReviews reviews',
            child: Text(
              "$rating ★",
              style: const TextStyle(
                  fontSize: 20, overflow: TextOverflow.ellipsis),
            ),
          ),
        ),
        Expanded(
          child: _CustomElevatedButton(
            text: category,
            child: const Icon(
              Icons.people,
              size: 30,
            ),
          ),
        ),
        Expanded(
          child: _CustomElevatedButton(
            text: '$rottenTomatoRating%',
            child: Image.asset(
              "assets/images/tomato.png",
              height: 30,
              width: 30,
            ),
          ),
        ),
        const Expanded(
          child: _CustomElevatedButton(
            text: 'similar',
            child: Icon(
              Icons.tab,
              size: 30,
            ),
          ),
        ),
      ],
    );
  }
}

class _CustomElevatedButton extends StatelessWidget {
  const _CustomElevatedButton({
    Key? key,
    required this.text,
    required this.child,
  }) : super(key: key);

  final String text;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
            onPressed: () async {
              await showNotImplementedAlertDialog(context);
            },
            style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(20),
                backgroundColor: Colors.pink),
            child: child),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 8.0,
          ),
          child: Text(
            text,
            style: const TextStyle(fontSize: 15),
          ),
        )
      ],
    );
  }
}
