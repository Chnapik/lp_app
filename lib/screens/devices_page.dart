import 'package:flutter/material.dart';
import 'package:lp_app/screens/app_bar.dart';

class DevicesPage extends StatelessWidget {
  const DevicesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(appBarTitle: 'Devices'),
      body: const Center(
        child: Text(
          'Devices Page',
          style: TextStyle(fontSize: 40.0),
        ),
      ),
    );
  }
}
