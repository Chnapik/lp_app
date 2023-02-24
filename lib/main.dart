import 'package:flutter/material.dart';
import 'package:lp_app/screens/bottom_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Li+ion Power',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const BottomNavBar(),
    );
  }
}
