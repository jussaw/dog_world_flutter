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
    return Scaffold(
      appBar: AppBar(
        leading: ElevatedButton(
          child: const Icon(Icons.arrow_back),
          onPressed: () => {Navigator.of(context).pop()},
        ),
      ),
    );
  }
}
