import 'package:dog_world/park_catalog/domain/models/dog_park_entry_model.dart';
import 'package:dog_world/dog_park_info/providers/dog_park_info.dart';
import 'package:flutter/material.dart';

class ParkCatalogEntry extends StatelessWidget {
  const ParkCatalogEntry({
    required this.model,
    super.key,
  });

  final DogParkEntryModel model;

  @override
  Widget build(BuildContext context) {
    const double textSideMargin = 10.0;

    return TextButton(
      style: TextButton.styleFrom(
        foregroundColor: Colors.black,
      ),
      onPressed: () => {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => DogParkInfo(
              parkId: model.parkId,
              parkName: model.parkName,
            ),
          ),
        ),
      },
      child: SizedBox(
        width: double.infinity,
        height: 48.0,
        child: Row(
          children: [
            SizedBox(
              width: 24,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.arrow_upward, color: Colors.black, size: 12),
                  Text((model.likeCount - model.dislikeCount).toString()),
                  const Icon(Icons.arrow_downward,
                      color: Colors.black, size: 12),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(
                    left: textSideMargin,
                    right: textSideMargin,
                  ),
                  child: Text(model.parkName),
                ),
                Container(
                  padding: const EdgeInsets.only(
                    left: textSideMargin,
                    right: textSideMargin,
                  ),
                  child: Text(
                    'author: ${model.author}',
                    style: const TextStyle(fontSize: 10),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
