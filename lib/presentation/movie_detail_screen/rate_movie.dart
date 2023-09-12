import 'package:flutter/material.dart';

import 'package:flutter_google_play_movies_ui/common_widgets/not_implemented.dart';

class RateMovie extends StatelessWidget {
  const RateMovie({
    super.key,
    required this.googlePlayMovieColor,
  });

  final Color googlePlayMovieColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Rate this movie",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
          ),
          Text(
            "Tell us what you think.",
            style:
                TextStyle(color: Colors.grey[600], fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 15,
          ),
          GestureDetector(
            onTap: () async {
              await showNotImplementedAlertDialog(context);
            },
            child: Text(
              "★ ★ ★ ★ ★",
              style: TextStyle(
                  color: Colors.grey[400],
                  fontWeight: FontWeight.w500,
                  fontSize: 60),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () async {
              await showNotImplementedAlertDialog(context);
            },
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7),
                ),
                backgroundColor: googlePlayMovieColor),
            child: const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                "Write review",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
