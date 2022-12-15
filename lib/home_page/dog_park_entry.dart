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

    const double textSideMargin = 10.0;

    return Container(
      margin: const EdgeInsets.only(
        left: sideMargin,
        right: sideMargin,
        top: topBottomMargin,
        bottom: topBottomMargin,
      ),
      width: double.infinity,
      height: 48.0,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black45),
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.white,
      ),
      child: Row(
        children: [
          SizedBox(
            width: 24,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.arrow_upward, color: Colors.black, size: 12),
                Text((likeCount - dislikeCount).toString()),
                const Icon(Icons.arrow_downward, color: Colors.black, size: 12),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.only(
                  left: textSideMargin,
                  right: textSideMargin,
                ),
                child: Text(name),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
