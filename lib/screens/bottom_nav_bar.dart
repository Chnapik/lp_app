import 'package:flutter/material.dart';
import 'package:lp_app/screens/battery_health_page.dart';
import 'package:lp_app/screens/settings_page.dart';
import 'devices_page.dart';
import 'home_page.dart';

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
    const BatteryHealthPage(),
    const HomePage(),
    const SettingsPage(),
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
