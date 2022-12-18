import 'package:dog_world/dog_parks_list/dog_park_entry_test_data.dart';
import 'package:flutter/material.dart';

class DogParkEntryList extends StatelessWidget {
  const DogParkEntryList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: const [
          // Replace with real data later
          ...dogParkEntryList
        ],
      ),
    );
  }
}
