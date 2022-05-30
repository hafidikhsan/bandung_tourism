import 'package:bandung_tourism/presentation/components/image_button.dart';
import 'package:bandung_tourism/presentation/screens/home_screen.dart';
import 'package:bandung_tourism/theme/presentation/bloc/theme_manager_bloc.dart';
import 'package:bandung_tourism/theme/theme_data.dart';
import 'package:bandung_tourism/theme/utils/enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ImageButtonScreen extends StatelessWidget {
  const ImageButtonScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double width = screenSize.width - 90;
    Brightness screenBrightness = MediaQuery.platformBrightnessOf(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image Button"),
      ),
      body: BlocBuilder<ThemeManagerBloc, ThemeManagerState>(
        builder: (context, state) {
          Color colorOne = (state.isDark == ThemeModeEnum.darkTheme)
              ? bDarkGrey
              : (state.isDark == ThemeModeEnum.lightTheme)
                  ? bTextPrimary
                  : (screenBrightness == Brightness.light)
                      ? bTextPrimary
                      : bDarkGrey;
          Color colorTwo = (state.isDark == ThemeModeEnum.darkTheme)
              ? bGrey
              : (state.isDark == ThemeModeEnum.lightTheme)
                  ? bLightGrey
                  : (screenBrightness == Brightness.light)
                      ? bLightGrey
                      : bGrey;
          bool isLight = (state.isDark == ThemeModeEnum.darkTheme)
              ? false
              : (state.isDark == ThemeModeEnum.lightTheme)
                  ? true
                  : (screenBrightness == Brightness.light)
                      ? true
                      : false;
          return Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomImageButton(
                        icon: "assets/icon/facebook.svg",
                        color: colorOne,
                        width: width / 3,
                        isLight: isLight,
                        onTap: () {
                          Navigator.pop(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomeScreen(),
                            ),
                          );
                        },
                      ),
                      CustomImageButton(
                        icon: "assets/icon/twitter.svg",
                        color: colorOne,
                        width: width / 3,
                        isLight: isLight,
                        onTap: () {
                          Navigator.pop(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomeScreen(),
                            ),
                          );
                        },
                      ),
                      CustomImageButton(
                        icon: "assets/icon/google.svg",
                        color: colorOne,
                        width: width / 3,
                        isLight: isLight,
                        onTap: () {
                          Navigator.pop(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomeScreen(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomImageButton(
                        icon: "assets/icon/facebook.svg",
                        color: colorTwo,
                        width: width / 3,
                        isLight: isLight,
                        onTap: () {
                          Navigator.pop(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomeScreen(),
                            ),
                          );
                        },
                      ),
                      CustomImageButton(
                        icon: "assets/icon/twitter.svg",
                        color: colorTwo,
                        width: width / 3,
                        isLight: isLight,
                        onTap: () {
                          Navigator.pop(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomeScreen(),
                            ),
                          );
                        },
                      ),
                      CustomImageButton(
                        icon: "assets/icon/google.svg",
                        color: colorTwo,
                        width: width / 3,
                        isLight: isLight,
                        onTap: () {
                          Navigator.pop(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomeScreen(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomImageButton(
                        icon: "assets/icon/facebook.svg",
                        color: colorOne,
                        width: width / 2,
                        isLight: isLight,
                        onTap: () {
                          Navigator.pop(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomeScreen(),
                            ),
                          );
                        },
                      ),
                      CustomImageButton(
                        icon: "assets/icon/twitter.svg",
                        color: colorOne,
                        width: width / 2,
                        isLight: isLight,
                        onTap: () {
                          Navigator.pop(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomeScreen(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomImageButton(
                        icon: "assets/icon/facebook.svg",
                        color: colorTwo,
                        width: width + 30,
                        isLight: isLight,
                        onTap: () {
                          Navigator.pop(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomeScreen(),
                            ),
                          );
                        },
                      ),
                    ],
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
