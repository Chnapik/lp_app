import 'package:flutter/material.dart';
import 'package:lp_app/screens/app_bar.dart';

class BatteryPage extends StatelessWidget {
  const BatteryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(),
      body: Center(
        child: Text(
          'Battery Page',
          style: TextStyle(fontSize: 40.0),
        ),
      ),
    );
  }
}
