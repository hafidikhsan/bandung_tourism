import 'package:bandung_tourism/theme/domain/repositories/theme_repository.dart';
import 'package:bandung_tourism/theme/utils/enum.dart';

class GetTheme {
  final ThemeRepository repository;

  GetTheme(this.repository);

  Future<ThemeModeEnum> execute() async {
    return repository.loadTheme();
  }
}
