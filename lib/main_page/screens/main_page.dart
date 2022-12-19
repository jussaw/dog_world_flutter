import 'package:dog_world/constants.dart';
import 'package:dog_world/catalog/providers/catalog.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(appName),
      ),
      body: const Catalog(),
    );
  }
}
