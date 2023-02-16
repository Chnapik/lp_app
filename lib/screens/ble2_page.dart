import 'package:flutter/material.dart';
import 'package:lp_app/screens/app_bar.dart';

class Ble2Page extends StatelessWidget {
  const Ble2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        appBarTitle: 'Battery',
        showLeading: true,
      ),
      body: const Center(
        child: Text(
          'BLE2 Page',
          style: TextStyle(fontSize: 40.0),
        ),
      ),
    );
  }
}
