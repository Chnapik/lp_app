import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Li+ion Power'),
        backgroundColor: Colors.grey,
        actions: const [
          PopupMenuItem(
            child: Text('Settings'),
          ),
        ],
      ),
      body: SafeArea(
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const <Widget>[
              Text('Total Battery Degradation Reduced'),
              SizedBox(height: 10.0),
              Text('Battery Health Metric'),
              SizedBox(height: 10.0),
              Text('Devices | Battery | Home'),
            ],
          ),
        ),
      ),
    );
  }
}
