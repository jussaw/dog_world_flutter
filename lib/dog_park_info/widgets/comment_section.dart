import 'package:dog_world/dog_park_info/domain/models/comment_model.dart';
import 'package:flutter/material.dart';

class CommentSection extends StatelessWidget {
  const CommentSection({
    super.key,
    required this.comments,
  });

  final List<CommentModel> comments;

  @override
  Widget build(BuildContext context) {
    const double margin = 10.0;
    const double padding = 5.0;
    const double borderRadius = 8.0;

    return Expanded(
      child: ListView(
        children: [
          // TODO: Remove later
          const Text(
            "----------------COMMENTS----------------",
            textAlign: TextAlign.center,
          ),
          ...comments
              .map((comment) => Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.all(margin),
                    padding: const EdgeInsets.all(padding),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(borderRadius),
                    ),
                    child: Text(comment.body),
                  ))
              .toList(),
        ],
      ),
    );
  }
}
