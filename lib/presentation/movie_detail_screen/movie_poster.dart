import 'package:flutter/material.dart';

class MoviePoster extends StatelessWidget {
  const MoviePoster({
    Key? key,
    required this.posterUrl,
    required this.trailerUrl,
  }) : super(key: key);

  final String posterUrl;
  final String trailerUrl;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomStart,
      clipBehavior: Clip.none,
      children: [
        SizedBox(
          height: 250,
          child: Image.asset(
            trailerUrl,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          bottom: -90,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            height: 180,
            width: 130,
            child: Image.asset(
              posterUrl,
              fit: BoxFit.fill,
            ),
          ),
        )
      ],
    );
  }
}
