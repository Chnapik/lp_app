import 'package:flutter/material.dart';

import 'ble1_page.dart';
import 'devices_page.dart';
import 'home_page.dart';

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
