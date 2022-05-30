import 'dart:async';

import 'package:bandung_tourism/presentation/screens/button_screen.dart';
import 'package:bandung_tourism/presentation/screens/icon_button_screen.dart';
import 'package:bandung_tourism/presentation/screens/on_boarding_screen.dart';
import 'package:bandung_tourism/presentation/screens/theme_setting_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      FlutterNativeSplash.remove();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Batur Test Aplication"),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ThemeSettingScreen(),
                  ),
                );
              },
              child: const Icon(Icons.settings),
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Home Screen',
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const OnBoardingScreen(),
                  ),
                );
              },
              child: const Text(
                'Onboarding',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ButtonScreen(),
                  ),
                );
              },
              child: const Text(
                'Button',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const IconButtonScreen(),
                  ),
                );
              },
              child: const Text(
                'Icon Button',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
