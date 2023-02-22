import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lp_app/screens/battery_health_page.dart';
import 'package:lp_app/screens/ble1_page.dart';
import 'package:lp_app/screens/ble2_page.dart';
import 'package:lp_app/screens/bottom_nav_bar.dart';
import 'package:lp_app/screens/devices_page.dart';
import 'package:lp_app/screens/home_page.dart';
import 'package:lp_app/screens/login_page.dart';
import 'package:lp_app/screens/registration_page.dart';
import 'package:lp_app/screens/settings_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Li+ion Power',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      routerConfig: _router,
    );
  }
}

final _router = GoRouter(
  initialLocation: '/bottomnavbar',
  routes: [
    GoRoute(
      path: '/bottomnavbar',
      builder: (context, state) => const BottomNavBar(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/devices',
      builder: (context, state) => const DevicesPage(),
    ),
    GoRoute(
      path: '/battery',
      builder: (context, state) => const BatteryHealthPage(),
    ),
    GoRoute(
      path: '/settings',
      builder: (context, state) => const SettingsPage(),
    ),
    GoRoute(
      path: '/ble1',
      builder: (context, state) => const Ble1Page(),
    ),
    GoRoute(
      path: '/ble2',
      builder: (context, state) => const Ble2Page(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: '/register',
      builder: (context, state) => const RegistrationPage(),
    ),
  ],
);
