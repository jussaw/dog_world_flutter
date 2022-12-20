import 'package:dog_world/main_page/widgets_side_menu/feedback.dart';
import 'package:dog_world/main_page/widgets_side_menu/profile.dart';
import 'package:dog_world/main_page/widgets_side_menu/settings.dart';
import 'package:dog_world/main_page/widgets_side_menu/welcome.dart';
import 'package:flutter/material.dart';

class MpSideMenu extends StatelessWidget {
  const MpSideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            child: Text(
              'Side menu',
              style: TextStyle(fontSize: 25),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.input),
            title: const Text('Welcome'),
            onTap: () => {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const Welcome(),
              )),
            },
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Profile'),
            onTap: () => {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const Profile(),
              )),
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () => {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const Settings(),
              )),
            },
          ),
          ListTile(
            leading: const Icon(Icons.border_color),
            title: const Text('Feedback'),
            onTap: () => {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const FeedbackWidget(),
              )),
            },
          ),
          const ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            // onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}
