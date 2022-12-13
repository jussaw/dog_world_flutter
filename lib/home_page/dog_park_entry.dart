import 'package:flutter/material.dart';

class DogParkEntry extends StatelessWidget {
  const DogParkEntry(
      {super.key,
      required this.name,
      required this.description,
      required this.likeCount,
      required this.dislikeCount});

  final String name;
  final String description;
  final int likeCount;
  final int dislikeCount;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        children: [
          Column(
            children: const [
              Icon(Icons.arrow_upward, color: Colors.black, size: 12),
              Icon(Icons.arrow_downward, color: Colors.black, size: 12)
            ],
          ),
          Column(
            children: [
              Text((likeCount - dislikeCount).toString()),
            ],
          ),
          Column(
            children: [
              Text(name),
            ],
          ),
        ],
      ),
    );
  }
}
