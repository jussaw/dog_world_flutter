import 'package:dog_world/dog_parks_list/domain/models/dog_parks_model.dart';
import 'package:flutter/material.dart';

class DogParkEntry extends StatelessWidget {
  const DogParkEntry({
    super.key,
    required this.parkName,
    required this.parkId,
    required this.author,
    required this.authorId,
    required this.likeCount,
    required this.dislikeCount,
  });

  final String parkName;
  final int parkId;
  final String author;
  final int authorId;
  final int likeCount;
  final int dislikeCount;

  @override
  Widget build(BuildContext context) {
    const double sideMargin = 4.0;
    const double topBottomMargin = 2.0;
    const double textSideMargin = 10.0;

    DogParksModel dogParkDetailsData = DogParksModel(
      parkName: parkName,
      parkId: parkId,
      author: author,
      authorId: authorId,
      likeCount: likeCount,
      dislikeCount: dislikeCount,
    );

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
      // child: ElevatedButton(
      //   style: ElevatedButton.styleFrom(
      //     backgroundColor: Colors.white,
      //     foregroundColor: Colors.black,
      //   ),
      // TODO: UPDATE PAGE REDIRECTION
      // onPressed: () => {
      //   Navigator.of(context).push(
      //     MaterialPageRoute(
      //       builder: (context) =>
      //           DogParkDetails(dogParkDetailsData: dogParkDetailsData),
      //     ),
      //   )
      // }

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
                child: Text(parkName),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
