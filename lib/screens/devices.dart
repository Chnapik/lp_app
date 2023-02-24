import 'package:flutter/material.dart';
import 'package:lp_app/screens/add_device.dart';
import 'package:lp_app/screens/ble1.dart';
import 'package:lp_app/screens/ble2.dart';

class DevicesPage extends StatelessWidget {
  const DevicesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Devices'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Ble1Page()));
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.blueGrey,
                ),
                height: 100.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: const [
                        Icon(Icons.bluetooth, size: 40.0, color: Colors.white),
                        Text(
                          'BLE1',
                          style: TextStyle(fontSize: 40.0, color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Ble2Page()));
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.blueGrey,
                ),
                height: 100.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: const [
                        Icon(Icons.bluetooth, size: 40.0, color: Colors.white),
                        Text(
                          'BLE2',
                          style: TextStyle(fontSize: 40.0, color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const AddDevice()));
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.blueGrey,
                ),
                height: 100.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: const [
                        Icon(Icons.bluetooth, size: 40.0, color: Colors.white),
                        Text(
                          'Add Device',
                          style: TextStyle(fontSize: 40.0, color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),

      // body: Container(
      //   child: Card(
      //     margin: const EdgeInsets.all(8.0),
      //     color: const Color.fromARGB(255, 214, 211, 211),
      //     shape: RoundedRectangleBorder(
      //       borderRadius: BorderRadius.circular(15.0),
      //     ),
      //     child: ListView.separated(
      //       padding: const EdgeInsets.all(25.0),
      //       itemCount: entries.length,
      //       itemBuilder: (BuildContext context, int index) {
      //         return GestureDetector(
      //           onTap: () {
      //             if (index == 0) {
      //               Navigator.of(context).push(MaterialPageRoute(
      //                   builder: (context) => const Ble1Page()));
      //             } else if (index == 1) {
      //               Navigator.of(context).push(MaterialPageRoute(
      //                   builder: (context) => const Ble2Page()));
      //             } else if (index == 2) {
      //               Navigator.of(context).push(MaterialPageRoute(
      //                   builder: (context) => const AddDevice()));
      //             }
      //           },
      //           child: Container(
      //             height: 50,
      //             color: Colors.blueGrey,
      //             // color: Colors.amber[colorCodes[index]],
      //             child: Center(
      //                 child: Text(
      //               entries[index],
      //               style: const TextStyle(color: Colors.white, fontSize: 18.0),
      //             )),
      //           ),
      //         );
      //       },
      //       separatorBuilder: (BuildContext context, int index) =>
      //           const Divider(
      //         height: 30.0,
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
