import 'package:flutter/material.dart';

import 'package:flutter_google_play_movies_ui/common_widgets/not_implemented.dart';

class MoviePrice extends StatelessWidget {
  const MoviePrice({
    Key? key,
    required this.sellPrice,
    required this.rentPrice,
  }) : super(key: key);

  final double sellPrice;
  final double rentPrice;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            onPressed: () async {
              await showNotImplementedAlertDialog(context);
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.pink),
            ),
            child: Text(
              "Rent \$$rentPrice",
              style: const TextStyle(
                fontSize: 17,
              ),
            ),
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.pink),
            ),
            onPressed: () async {
              await showNotImplementedAlertDialog(context);
            },
            child: Text(
              "Buy \$$sellPrice",
              style: const TextStyle(fontSize: 17),
            ),
          ),
        ],
      ),
    );
  }
}
