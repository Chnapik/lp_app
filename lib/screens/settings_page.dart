import 'package:flutter/material.dart';
import 'package:lp_app/screens/app_bar.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(),
      body: Center(
        child: Text(
          'Settings Page',
          style: TextStyle(fontSize: 40.0),
        ),
      ),
    );
  }
}
