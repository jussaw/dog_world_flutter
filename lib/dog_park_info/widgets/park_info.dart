import 'package:flutter/material.dart';

class ParkInfo extends StatelessWidget {
  const ParkInfo({
    super.key,
    required this.body,
    required this.author,
  });

  final String body;
  final String author;

  @override
  Widget build(BuildContext context) {
    const double margin = 10.0;
    const double padding = 5.0;
    const double borderRadius = 8.0;

    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.all(margin),
      padding: const EdgeInsets.all(padding),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      // TODO: Update with details from api call
      child: Text(body),
    );
  }
}
