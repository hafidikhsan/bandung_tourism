part of 'theme_manager_bloc.dart';

class ThemeManagerState extends Equatable {
  final ThemeModeEnum isDark;

  const ThemeManagerState({required this.isDark});

  ThemeManagerState copyWith({
    ThemeModeEnum? isDark,
  }) {
    return ThemeManagerState(
      isDark: isDark ?? this.isDark,
    );
  }

  @override
  List<Object> get props => [isDark];
}

class ThemeManagerInitial extends ThemeManagerState {
  static ThemeModeEnum isDarkInit = ThemeModeEnum.lightTheme;

  ThemeManagerInitial() : super(isDark: isDarkInit);
}
