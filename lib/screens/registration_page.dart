import 'package:flutter/material.dart';
import 'package:lp_app/screens/app_bar.dart';
import 'package:lp_app/screens/main_route.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(appBarTitle: 'Register'),
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'name',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'email',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'password',
                      border: OutlineInputBorder(),
                    ),
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
