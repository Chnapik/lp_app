import 'package:flutter/material.dart';
import 'package:lp_app/screens/app_bar.dart';

class Ble1Page extends StatelessWidget {
  const Ble1Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(),
      body: Center(
        child: Text(
          'BLE1 Page',
          style: TextStyle(fontSize: 40.0),
        ),
      ),
    );
  }
}
