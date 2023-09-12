import 'package:flutter/material.dart';

class RatingBarIndicator extends StatelessWidget {
  final int leadingNumber;
  final Color color;
  final int width;

  const RatingBarIndicator(
      {super.key, required this.color, required this.width, required this.leadingNumber});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(children: [
        Text(leadingNumber.toString()),
        const SizedBox(
          width: 5,
        ),
        Container(
          height: 20,
          width: 250,
          alignment: Alignment.topLeft,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(12),
          ),
          child: Container(
            height: 20,
            width: width.toDouble(),
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(12)),
          ),
        ),
      ]),
    );
  }
}
