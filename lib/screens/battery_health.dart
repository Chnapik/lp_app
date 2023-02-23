import 'package:flutter/material.dart';

class BatteryHealthPage extends StatefulWidget {
  const BatteryHealthPage({Key? key}) : super(key: key);

  @override
  State<BatteryHealthPage> createState() => _BatteryHealthPageState();
}

class _BatteryHealthPageState extends State<BatteryHealthPage> {
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
