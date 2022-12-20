import 'package:flutter/material.dart';

class MpBottomNavBar extends StatefulWidget {
  const MpBottomNavBar({super.key, required this.onTap});

  final Function onTap;

  @override
  State<MpBottomNavBar> createState() => _MpBottomNavBarState();
}

class _MpBottomNavBarState extends State<MpBottomNavBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      widget.onTap(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.pets),
          label: 'Parks',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Account',
        ),
      ],
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
    );
  }
}
