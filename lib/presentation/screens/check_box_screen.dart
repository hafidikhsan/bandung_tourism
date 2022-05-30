import 'package:bandung_tourism/theme/presentation/bloc/theme_manager_bloc.dart';
import 'package:bandung_tourism/theme/theme_data.dart';
import 'package:bandung_tourism/theme/utils/enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CheckBoxScreen extends StatefulWidget {
  const CheckBoxScreen({Key? key}) : super(key: key);

  @override
  State<CheckBoxScreen> createState() => _CheckBoxScreenState();
}

class _CheckBoxScreenState extends State<CheckBoxScreen> {
  bool _checked = false;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double width = screenSize.width - 60;
    Brightness screenBrightness = MediaQuery.platformBrightnessOf(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Check Box"),
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
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: GestureDetector(
                    onTap: () => setState(() {
                      _checked = !_checked;
                    }),
                    child: Row(
                      children: <Widget>[
                        SizedBox(
                          height: 24.0,
                          width: 24.0,
                          child: Checkbox(
                            side: BorderSide(
                              width: 1.0,
                              color: (isLight) ? bPrimaryVariant1 : bGrey,
                            ),
                            activeColor: (isLight) ? bPrimaryVariant1 : bGrey,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            value: _checked,
                            onChanged: (value) {
                              setState(() => _checked = value!);
                            },
                          ),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          "Remember me",
                          style: bBody1.copyWith(
                            color: (isLight) ? bPrimaryVariant1 : bTextPrimary,
                          ),
                        ),
                      ],
                    ),
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
