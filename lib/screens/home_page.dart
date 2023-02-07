import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Li+ion Power'),
        backgroundColor: Colors.blueGrey,
        actions: const [
          PopupMenuItem(
            child: Text('Settings'),
          ),
        ],
      ),
      body: const Center(
        child: Text('Homepage'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
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
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        backgroundColor: Colors.blueGrey,
        selectedItemColor: Colors.white,
        onTap: _navigateBottomBar,
      ),
    );
  }
}
