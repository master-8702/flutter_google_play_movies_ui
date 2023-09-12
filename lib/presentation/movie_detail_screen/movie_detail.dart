import 'package:flutter/material.dart';

class MovieDetail extends StatelessWidget {
  const MovieDetail({
    Key? key,
    required this.releaseDate,
    required this.rated,
    required this.duration,
  }) : super(key: key);

  final String releaseDate;
  final String rated;
  final int duration;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 90.0),
      child: Text(
        '$releaseDate  |  $rated  |  $duration minutes',
        style: const TextStyle(color: Colors.grey),
      ),
    );
  }
}
