import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BatteryPage extends StatelessWidget {
  const BatteryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Battery'),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              context.go('/settings');
            },
          ),
        ],
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
