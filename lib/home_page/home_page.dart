import 'package:dog_world/constants.dart';
import 'package:dog_world/home_page/dog_park_entry_list.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appName),
        ),
        body: const DogParkEntryList(),
      ),
    );
  }
}
