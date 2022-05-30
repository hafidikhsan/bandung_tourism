import 'package:bandung_tourism/presentation/components/validation_button.dart';
import 'package:bandung_tourism/presentation/screens/home_screen.dart';
import 'package:bandung_tourism/theme/presentation/bloc/theme_manager_bloc.dart';
import 'package:bandung_tourism/theme/theme_data.dart';
import 'package:bandung_tourism/theme/utils/enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ValidationScreen extends StatelessWidget {
  const ValidationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double width = screenSize.width - 20;
    Brightness screenBrightness = MediaQuery.platformBrightnessOf(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Validation Button"),
      ),
      body: BlocBuilder<ThemeManagerBloc, ThemeManagerState>(
        builder: (context, state) {
          Color colorOne = (state.isDark == ThemeModeEnum.darkTheme)
              ? bDarkGrey
              : (state.isDark == ThemeModeEnum.lightTheme)
                  ? bPrimaryVariant1
                  : (screenBrightness == Brightness.light)
                      ? bPrimaryVariant1
                      : bDarkGrey;
          bool isLight = (state.isDark == ThemeModeEnum.darkTheme)
              ? false
              : (state.isDark == ThemeModeEnum.lightTheme)
                  ? true
                  : (screenBrightness == Brightness.light)
                      ? true
                      : false;
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: ValidationButton(
                    color: colorOne,
                    width: width,
                    onTapAcc: () {
                      Navigator.pop(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ),
                      );
                    },
                    isLight: isLight,
                    onTapDec: () {
                      Navigator.pop(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
