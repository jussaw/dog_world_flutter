import 'package:dog_world/main_page/mp_constants.dart';
import 'package:flutter/material.dart';

class MpSearch extends StatelessWidget {
  const MpSearch({super.key, required this.currentView});

  final MpFooterView currentView;

  @override
  Widget build(BuildContext context) {
    Widget searchIcon = Container();

    switch (currentView) {
      case MpFooterView.parks:
        searchIcon = IconButton(
          icon: const Icon(Icons.search),
          // TODO: Implement functionality for search accunt
          onPressed: () {},
        );
        break;
      case MpFooterView.account:
        searchIcon = IconButton(
          icon: const Icon(Icons.search),
          // TODO: Implement functionality for search parks
          onPressed: () {},
        );
        break;
    }

    return searchIcon;
  }
}
