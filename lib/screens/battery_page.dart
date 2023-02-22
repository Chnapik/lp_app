import 'package:flutter/material.dart';

class BatteryPage extends StatelessWidget {
  const BatteryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Battery'),
        automaticallyImplyLeading: false,
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
