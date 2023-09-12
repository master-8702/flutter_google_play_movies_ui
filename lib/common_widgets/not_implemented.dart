import 'package:flutter/material.dart';

Future<void> showNotImplementedAlertDialog(BuildContext context) async {
  await showDialog(
    context: context,
    barrierDismissible: true,
    builder: (context) {
      return AlertDialog(
        title: const Text('Alert!'),
        content: const Text('Not Implemented!'),
        actions: [
          ElevatedButton(
            child: const Text('Ok'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          )
        ],
      );
    },
  );
}
