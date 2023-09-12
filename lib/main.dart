import 'package:flutter/material.dart';

import 'package:flutter_google_play_movies_ui/presentation/movie_detail_screen/movie_detail_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MovieDetailPage(),
    );
  }
}
