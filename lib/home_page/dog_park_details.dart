import 'package:dog_world/models/dog_park_details_model.dart';
import 'package:flutter/material.dart';

class DogParkDetails extends StatelessWidget {
  const DogParkDetails({
    super.key,
    required this.dogParkDetailsData,
  });

  final DogParkDetailsModel dogParkDetailsData;

  @override
  Widget build(BuildContext context) {
    const double margin = 10.0;
    const double padding = 5.0;
    const double borderRadius = 8.0;

    return Scaffold(
      appBar: AppBar(
        leading: ElevatedButton(
          child: const Icon(Icons.arrow_back),
          onPressed: () => {Navigator.of(context).pop()},
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(margin),
              padding: const EdgeInsets.all(padding),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(borderRadius),
              ),
              child: Text(dogParkDetailsData.description),
            ),
          ),
          Text("--------COMMENTS--------"),
          ...dogParkDetailsData.comments.map((comment) {
            return SizedBox(
              width: double.infinity,
              child: Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.all(margin),
                padding: const EdgeInsets.all(padding),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(borderRadius),
                ),
                child: Text(
                  style: const TextStyle(fontSize: 6),
                  comment,
                ),
              ),
            );
          }),
        ],
      ),
    );
  }
}
