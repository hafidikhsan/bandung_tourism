import 'package:bandung_tourism/presentation/screens/check_box_screen.dart';
import 'package:bandung_tourism/presentation/screens/image_button_screen.dart';
import 'package:bandung_tourism/presentation/screens/on_boarding_screen.dart';
import 'package:bandung_tourism/presentation/screens/text_button_screen.dart';
import 'package:bandung_tourism/presentation/screens/text_icon_button_screen.dart';
import 'package:bandung_tourism/presentation/screens/validation_button_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
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
                  builder: (context) => const TextButtonScreen(),
                ),
              );
            },
            child: const Text(
              'Text Button',
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TextIconButtonScreen(),
                ),
              );
            },
            child: const Text(
              'Text Icon Button',
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
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ValidationScreen(),
                ),
              );
            },
            child: const Text(
              'Validation Button',
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CheckBoxScreen(),
                ),
              );
            },
            child: const Text(
              'Check Box',
            ),
          ),
        ],
      ),
    );
  }
}
