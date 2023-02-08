import 'package:flutter/material.dart';

class DevicesPage extends StatelessWidget {
  const DevicesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Devices Page',
          style: TextStyle(fontSize: 40.0),
        ),
      ),
    );
  }
}
