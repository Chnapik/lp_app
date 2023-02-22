import 'package:flutter/material.dart';

class BatteryHealthPage extends StatelessWidget {
  const BatteryHealthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Battery'),
      ),
      body: const Center(
        child: Text(
          'Battery Health Page',
          style: TextStyle(fontSize: 40.0),
        ),
      ),
    );
  }
}
