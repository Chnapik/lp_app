import 'package:flutter/material.dart';

import 'main_route.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50.0,
                ),
                const Text(
                  'Logo',
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Icon(
                  Icons.battery_charging_full_rounded,
                  size: 80.0,
                ),
                const SizedBox(
                  height: 50.0,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Username',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 50.0,
                ),
                Builder(builder: (context) {
                  return ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const MainRoute()));
                    },
                    child: const Text('Login'),
                  );
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
