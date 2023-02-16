import 'package:flutter/material.dart';
import 'package:lp_app/screens/app_bar.dart';
import 'package:lp_app/screens/bottom_nav_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        appBarTitle: 'Home',
        showLeading: false,
      ),
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
