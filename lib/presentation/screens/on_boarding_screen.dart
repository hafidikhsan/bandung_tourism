import 'package:bandung_tourism/presentation/screens/home_screen.dart';
import 'package:bandung_tourism/theme/presentation/bloc/theme_manager_bloc.dart';
import 'package:bandung_tourism/theme/theme_data.dart';
import 'package:bandung_tourism/theme/utils/enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    Brightness screenBrightness = MediaQuery.platformBrightnessOf(context);
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<ThemeManagerBloc, ThemeManagerState>(
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: <Widget>[
                      Center(
                        child: Image.asset(
                          (state.isDark == ThemeModeEnum.darkTheme)
                              ? 'assets/logo/logo_dark.png'
                              : (state.isDark == ThemeModeEnum.lightTheme)
                                  ? 'assets/logo/logo.png'
                                  : (screenBrightness == Brightness.light)
                                      ? 'assets/logo/logo.png'
                                      : 'assets/logo/logo_dark.png',
                          height: 40.0,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: screenSize.height * 0.01),
                        child: Center(
                          child: Image.asset(
                            'assets/logo/gedung_sate.png',
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: screenSize.height * 0.01),
                        child: Center(
                          child: Text(
                            'Jelajahi Bandung',
                            style: bHeading3.copyWith(
                              color: (state.isDark == ThemeModeEnum.darkTheme)
                                  ? bTextPrimary
                                  : (state.isDark == ThemeModeEnum.lightTheme)
                                      ? bPrimaryVariant1
                                      : (screenBrightness == Brightness.light)
                                          ? bPrimaryVariant1
                                          : bTextPrimary,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: screenSize.height * 0.05),
                        child: Center(
                          child: Text(
                            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s.',
                            style: bSubtitle1.copyWith(
                              color: (state.isDark == ThemeModeEnum.darkTheme)
                                  ? bTextPrimary
                                  : (state.isDark == ThemeModeEnum.lightTheme)
                                      ? bPrimaryVariant1
                                      : (screenBrightness == Brightness.light)
                                          ? bPrimaryVariant1
                                          : bTextPrimary,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: (state.isDark == ThemeModeEnum.darkTheme)
                          ? bDarkGrey
                          : (state.isDark == ThemeModeEnum.lightTheme)
                              ? bPrimary
                              : (screenBrightness == Brightness.light)
                                  ? bPrimary
                                  : bTextPrimary,
                      minimumSize: Size((screenSize.width - 60), 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                    child: Text(
                      'Mulai Sekarang',
                      style: bButton1.copyWith(color: bTextPrimary),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
