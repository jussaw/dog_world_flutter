import 'package:dog_world/account/widgets/account.dart';
import 'package:dog_world/constants.dart';
import 'package:dog_world/catalog/providers/catalog.dart';
import 'package:dog_world/main_page/widgets/mp_bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({
    super.key,
    required this.title,
  });

  final String title;

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Widget body = const Catalog();

  void _onItemTapped(int index) {
    setState(() {
      switch (index) {
        case 0:
          body = const Catalog();
          break;
        case 1:
          body = const Account();
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(appName),
      ),
      body: body,
      bottomNavigationBar: MpBottomNavBar(
        onTap: _onItemTapped,
      ),
    );
  }
}
