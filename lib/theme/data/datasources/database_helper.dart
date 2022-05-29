import 'package:bandung_tourism/theme/utils/enum.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DatabaseHelper {
  static DatabaseHelper? _databaseHelper;
  DatabaseHelper._instance() {
    _databaseHelper = this;
  }

  factory DatabaseHelper() => _databaseHelper ?? DatabaseHelper._instance();

  static SharedPreferences? _preferences;

  Future<SharedPreferences?> get preferences async {
    _preferences ??= await _initDb();
    return _preferences;
  }

  static const String _themePref = 'themeMode';
  static const String _themeLight = 'lightMode';
  static const String _themeDark = 'darkMode';
  static const String _themeSystem = 'systemMode';

  Future<SharedPreferences> _initDb() async {
    final pref = await SharedPreferences.getInstance();
    return pref;
  }

  Future<bool> saveTheme(ThemeModeEnum theme) async {
    final pref = await preferences;

    if (theme == ThemeModeEnum.lightTheme) {
      pref?.setString(_themePref, _themeLight);
      return true;
    } else if (theme == ThemeModeEnum.darkTheme) {
      pref?.setString(_themePref, _themeDark);
      return true;
    } else if (theme == ThemeModeEnum.systemTheme) {
      pref?.setString(_themePref, _themeSystem);
      return true;
    } else {
      return false;
    }
  }

  Future<ThemeModeEnum> loadTheme() async {
    final pref = await preferences;

    final _value = pref?.getString(_themePref) ?? _themeSystem;

    if (_value == _themeLight) {
      return ThemeModeEnum.lightTheme;
    } else if (_value == _themeDark) {
      return ThemeModeEnum.darkTheme;
    } else {
      return ThemeModeEnum.systemTheme;
    }
  }
}
