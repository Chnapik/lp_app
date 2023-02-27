import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Devices',
        ),
      ),
      body: ListView(
        children: [
          const SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.blueGrey,
                ),
                height: 100.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: const [
                          Icon(Icons.phone_iphone,
                              size: 30.0, color: Colors.white),
                          SizedBox(width: 20.0),
                          Text(
                            'Update',
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.blueGrey,
                ),
                height: 100.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: const [
                          Icon(Icons.laptop_mac,
                              size: 30.0, color: Colors.white),
                          SizedBox(width: 20.0),
                          Text(
                            'Bluetooth',
                            style:
                                TextStyle(fontSize: 30.0, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.blueGrey,
                ),
                height: 100.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: const [
                          Icon(Icons.bluetooth,
                              size: 30.0, color: Colors.white),
                          SizedBox(width: 20.0),
                          Text(
                            'Profile',
                            style:
                                TextStyle(fontSize: 30.0, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.blueGrey,
                ),
                height: 100.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: const [
                          Icon(Icons.bluetooth,
                              size: 30.0, color: Colors.white),
                          SizedBox(width: 20.0),
                          Text(
                            'How to Improve',
                            style:
                                TextStyle(fontSize: 30.0, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


// import 'package:flutter/material.dart';

// class SettingsPage extends StatelessWidget {
//   const SettingsPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Settings'),
//       ),
//       body: const Center(
//         child: Text(
//           'Settings Page',
//           style: TextStyle(fontSize: 40.0),
//         ),
//       ),
//     );
//   }
// }
