import 'package:flutter/material.dart';
import 'package:lp_app/screens/battery_health_page.dart';
import 'package:lp_app/screens/ble1_page.dart';
import 'package:lp_app/screens/ble2_page.dart';

class DevicesPage extends StatelessWidget {
  const DevicesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>['BLE1', 'BLE2'];
    final List<int> colorCodes = <int>[600, 500, 100];

    return SafeArea(
      child: ListView.separated(
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
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const BatteryHealthPage()));
              }
            },
            child: Container(
              height: 50,
              color: Colors.amber[colorCodes[index]],
              child: Center(child: Text(entries[index])),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}



// Scaffold(
//       appBar: AppBar(
//         title: const Text('Devices'),
//       ),
//       body: Center(
//         child: Builder(builder: (context) {
//           return Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               InkWell(
//                 child: Container(
//                   child: const Text(
//                     'BLE1',
//                     style: TextStyle(fontSize: 30.0),
//                   ),
//                 ),
//                 onTap: () {
//                   Navigator.of(context).push(MaterialPageRoute(
//                       builder: (context) => const Ble1Page()));
//                 },
//               ),
//               InkWell(
//                 child: Container(
//                   child: const Text(
//                     'BLE2',
//                     style: TextStyle(fontSize: 30.0),
//                   ),
//                 ),
//                 onTap: () {
//                   Navigator.of(context).push(MaterialPageRoute(
//                       builder: (context) => const Ble2Page()));
//                 },
//               ),
//               InkWell(
//                 child: const Text(
//                   'Add Device',
//                   style: TextStyle(fontSize: 30.0),
//                 ),
//                 onTap: () {},
//               ),
//             ],
//           );
//         }),
//       ),
//     );