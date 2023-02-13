import 'package:flutter/material.dart';
import 'package:lp_app/screens/settings_page.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  MyAppBar({required this.appBarTitle, required this.showLeading});

  String appBarTitle;
  bool showLeading = false;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: showLeading,
      title: Text(appBarTitle),
      actions: [
        Builder(builder: (context) {
          return IconButton(
            icon: const Icon(Icons.settings),
            color: Colors.white,
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const SettingsPage()));
            },
          );
        }),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
