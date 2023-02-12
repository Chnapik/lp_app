import 'package:flutter/material.dart';
import 'package:lp_app/screens/settings_page.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Li+ion Power'),
      actions: [
        Builder(builder: (context) {
          return IconButton(
            icon: Icon(Icons.settings),
            color: Colors.white,
            onPressed: () {
              print('onPressed has been called');
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => SettingsPage()));
            },
          );
        }),
      ],
    );
  }
}
