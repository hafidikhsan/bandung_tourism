part of 'theme_manager_bloc.dart';

abstract class ThemeManagerEvent extends Equatable {
  const ThemeManagerEvent();

  @override
  List<Object> get props => [];
}

class LoadThemeMode extends ThemeManagerEvent {
  final ThemeModeEnum isDark;
  const LoadThemeMode({required this.isDark});

  @override
  List<Object> get props => [isDark];
}
