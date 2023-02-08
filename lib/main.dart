import 'package:flutter/material.dart';
import 'package:lp_app/screens/main_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Li+ion Power',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Li+ion Power'),
          actions: const [
            PopupMenuItem(
              child: Text('Settings'),
            ),
          ],
        ),
        body: const MainRoute(),
      ),
    );
  }
}
