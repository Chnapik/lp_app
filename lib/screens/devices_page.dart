import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lp_app/screens/battery_page.dart';

class DevicesPage extends StatelessWidget {
  const DevicesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Devices'),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              context.go('/settings');
            },
          ),
        ],
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
                      builder: (context) => const BatteryPage()));
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
                      builder: (context) => const BatteryPage()));
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
