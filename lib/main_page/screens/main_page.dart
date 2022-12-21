import 'package:dog_world/account/widgets/account.dart';
import 'package:dog_world/constants.dart';
import 'package:dog_world/main_page/mp_constants.dart';
import 'package:dog_world/main_page/widgets/mp_search.dart';
import 'package:dog_world/park_catalog/providers/park_catalog.dart';
import 'package:dog_world/main_page/widgets/mp_bottom_nav_bar.dart';
import 'package:dog_world/main_page/widgets/mp_side_menu.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  MainPage({
    super.key,
    required this.title,
  });

  final String title;
  final Map<int, MpFooterViews> footerViewsMap = {
    0: MpFooterViews.parks,
    1: MpFooterViews.account,
  };

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Widget body = const ParkCatalog();
  MpFooterViews currentView = MpFooterViews.parks;

  void _onItemTapped(int index) {
    setState(() {
      switch (index) {
        case 0:
          body = const ParkCatalog();
          currentView = MpFooterViews.parks;
          break;
        case 1:
          body = const Account();
          currentView = MpFooterViews.account;
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MpSideMenu(),
      appBar: AppBar(
        title: const Text(appName),
        actions: [
          MpSearch(currentView: currentView),
        ],
      ),
      body: body,
      bottomNavigationBar: MpBottomNavBar(
        onTap: _onItemTapped,
      ),
    );
  }
}
