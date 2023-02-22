import 'package:flutter/material.dart';
import 'package:lp_app/screens/battery_health_page.dart';

class DevicesPage extends StatelessWidget {
  const DevicesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Devices'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Builder(builder: (context) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                'Devices',
                style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),
              ),
              InkWell(
                child: Container(
                  child: const Text(
                    'BLE1',
                    style: TextStyle(fontSize: 30.0),
                  ),
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const BatteryHealthPage()));
                },
              ),
              InkWell(
                child: Container(
                  child: const Text(
                    'BLE2',
                    style: TextStyle(fontSize: 30.0),
                  ),
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const BatteryHealthPage()));
                },
              ),
              InkWell(
                child: const Text(
                  'Add Device',
                  style: TextStyle(fontSize: 30.0),
                ),
                onTap: () {},
              ),
            ],
          );
        }),
      ),
    );
  }
}
