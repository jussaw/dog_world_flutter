import 'package:dog_world/global/constants.dart';
import 'package:dog_world/main_page/screens/main_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(title: 'DogWorld home page'),
    );
  }
}
