import 'package:flutter/material.dart';
import 'package:lp_app/screens/add_device.dart';
import 'package:lp_app/screens/battery_health.dart';
import 'package:lp_app/screens/ble1.dart';
import 'package:lp_app/screens/ble2.dart';
import 'package:lp_app/screens/settings.dart';
import 'devices.dart';
import 'home.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _MainRouteState();
}

class _MainRouteState extends State<BottomNavBar> {
  int _selectedPageIndex = 2;

  void _onPageChanged(int index) => setState(() => _selectedPageIndex = index);

  final List<Widget> screens = [
    const DevicesPage(),
    BatteryPage(),
    const HomePage(),
    const SettingsPage(),
    const Ble1Page(),
    const Ble2Page(),
    const AddDevice(),
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
            label: 'Battery Health',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
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
