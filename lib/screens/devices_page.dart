import 'package:flutter/material.dart';

class DevicesPage extends StatelessWidget {
  const DevicesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Devices'),
        backgroundColor: Colors.blueGrey,
        actions: const [
          PopupMenuItem(
            child: Text('Settings'),
          ),
        ],
      ),
      body: const Center(
        child: Text('Devices Page'),
      ),
    );
  }
}
