import 'package:flutter/material.dart';

import 'package:flutter_google_play_movies_ui/common_widgets/not_implemented.dart';

class MovieTitle extends StatelessWidget {
  const MovieTitle({
    super.key,
    required this.title,
  });

  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Container(),
          ),
          Expanded(
            flex: 3,
            child: Text(
              title,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
          ),
          Expanded(
            // flex: 1,s
            child: IconButton(
              icon: const Icon(
                Icons.bookmark_add_outlined,
                size: 30,
                color: Colors.pink,
              ),
              onPressed: () async {
                await showNotImplementedAlertDialog(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
