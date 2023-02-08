import 'package:flutter/material.dart';
import 'package:lp_app/screens/devices_page.dart';
import 'package:lp_app/screens/ble1_page.dart';

class MainRoute extends StatefulWidget {
  const MainRoute({super.key});

  @override
  State<MainRoute> createState() => _MainRouteState();
}

class _MainRouteState extends State<MainRoute> {
  int _selectedPageIndex = 1;

  void _onPageChanged(int index) => setState(() => _selectedPageIndex = index);

  final List<Widget> screens = [
    const DevicesPage(),
    const Ble1Page(),
    const HomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedPageIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.phone_android),
            label: 'Devices',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.battery_charging_full),
            label: 'Battery',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
        ],
        backgroundColor: Colors.blueGrey,
        selectedItemColor: Colors.orangeAccent,
        unselectedItemColor: Colors.white,
        onTap: _onPageChanged,
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // int _selectedIndex = 0;

  // void _navigateBottomBar(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

  // final List<Widget> screens = [
  //   const DevicesPage(),
  //   const Ble1Page(),
  //   // const HomePage(),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Center(
            child: Text('Home Page'),
          )
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   type: BottomNavigationBarType.fixed,
      //   currentIndex: _selectedIndex,
      //   items: const [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.phone_android),
      //       label: 'Devices',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.battery_charging_full),
      //       label: 'Battery',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //     ),
      //   ],
      //   backgroundColor: Colors.blueGrey,
      //   selectedItemColor: Colors.orangeAccent,
      //   unselectedItemColor: Colors.white,
      //   onTap: _navigateBottomBar,
      // ),
    );
  }
}
