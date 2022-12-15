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
    const double sideMargin = 4.0;
    const double topBottomMargin = 2.0;

    return Container(
      margin: const EdgeInsets.only(
        left: sideMargin,
        right: sideMargin,
        top: topBottomMargin,
        bottom: topBottomMargin,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black45),
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.black12,
      ),
      child: SizedBox(
        width: double.infinity,
        height: 32.0,
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
      ),
    );
  }
}
