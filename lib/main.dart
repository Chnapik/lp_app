import 'package:flutter/material.dart';
import 'package:lp_app/screens/main_route.dart';
import 'package:lp_app/screens/settings_page.dart';

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
      title: 'Li+ion Power',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Li+ion Power'),
          actions: [
            Builder(builder: (context) {
              return IconButton(
                icon: Icon(Icons.settings),
                color: Colors.white,
                onPressed: () {
                  print('onPressed has been called');
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => SettingsPage()));
                },
              );
            }),
          ],
        ),
        body: const MainRoute(),
      ),
    );
  }
}
