import 'package:flutter/material.dart';

class Ble2Page extends StatelessWidget {
  const Ble2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BLE2'),
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
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
