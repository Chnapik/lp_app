import 'package:flutter/material.dart';

class Ble1Page extends StatelessWidget {
  const Ble1Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BLE1'),
        backgroundColor: Colors.blueGrey,
        actions: const [
          PopupMenuItem(
            child: Text('Settings'),
          ),
        ],
      ),
      body: const Center(
        child: Text('BLE1 Page'),
      ),
    );
  }
}
