import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lp_app/screens/app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Center(
            child: Text(
              'Home Page',
              style: TextStyle(fontSize: 40.0),
            ),
          )
        ],
      ),
    );
  }
}
