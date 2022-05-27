import 'package:bandung_tourism/presentation/screens/home_screen.dart';
import 'package:bandung_tourism/theme/presentation/bloc/theme_manager_bloc.dart';
import 'package:bandung_tourism/theme/theme_data.dart';
import 'package:bandung_tourism/utils/enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeManagerBloc(),
      child: BlocBuilder<ThemeManagerBloc, ThemeManagerState>(
        builder: (context, state) {
          return MaterialApp(
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            theme: lightTheme,
            darkTheme: darkTheme,
            themeMode: (state.isDark == ThemeModeEnum.lightTheme)
                ? ThemeMode.light
                : (state.isDark == ThemeModeEnum.darkTheme)
                    ? ThemeMode.dark
                    : ThemeMode.system,
            home: const HomeScreen(),
          );
        },
      ),
    );
  }
}
