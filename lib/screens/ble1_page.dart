import 'package:flutter/material.dart';

class Ble1Page extends StatelessWidget {
  const Ble1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BLE1'),
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: const Center(
        child: Text(
          'BLE1 Page',
          style: TextStyle(fontSize: 40.0),
        ),
      ),
    );
  }
}
