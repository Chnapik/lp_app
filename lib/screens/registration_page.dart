import 'package:flutter/material.dart';
import 'package:lp_app/screens/app_bar.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(appBarTitle: 'Register'),
    );
  }
}
