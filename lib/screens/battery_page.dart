import 'package:flutter/material.dart';
import 'package:lp_app/screens/app_bar.dart';

class BatteryPage extends StatelessWidget {
  const BatteryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        appBarTitle: 'Battery',
        showLeading: false,
      ),
      body: const Center(
        child: Text(
          'Battery Page',
          style: TextStyle(fontSize: 40.0),
        ),
      ),
    );
  }
}
