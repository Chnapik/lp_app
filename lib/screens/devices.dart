import 'package:flutter/material.dart';
import 'package:lp_app/screens/add_device.dart';
import 'package:lp_app/screens/ble1_page.dart';
import 'package:lp_app/screens/ble2_page.dart';

class DevicesPage extends StatelessWidget {
  const DevicesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>['BLE1', 'BLE2', 'Add Device'];
    // final List<int> colorCodes = <int>[600, 500, 100];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Devices'),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              if (index == 0) {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Ble1Page()));
              } else if (index == 1) {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Ble2Page()));
              } else if (index == 2) {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const AddDevice()));
              }
            },
            child: Container(
              height: 50,
              color: Colors.blueGrey,
              // color: Colors.amber[colorCodes[index]],
              child: Center(
                  child: Text(
                entries[index],
                style: const TextStyle(color: Colors.white),
              )),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(
          height: 30.0,
        ),
      ),
    );
  }
}
