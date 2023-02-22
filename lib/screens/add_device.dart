import 'package:flutter/material.dart';

class AddDevice extends StatelessWidget {
  const AddDevice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Device'),
      ),
      body: const Center(
        child: Text(
          'Add Device',
          style: TextStyle(fontSize: 40.0),
        ),
      ),
    );
  }
}
