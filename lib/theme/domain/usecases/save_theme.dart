import 'package:bandung_tourism/theme/common/failure.dart';
import 'package:bandung_tourism/theme/domain/repositories/theme_repository.dart';
import 'package:bandung_tourism/theme/utils/enum.dart';
import 'package:dartz/dartz.dart';

class SaveTheme {
  final ThemeRepository repository;

  SaveTheme(this.repository);

  Future<Either<Failure, String>> execute(ThemeModeEnum theme) {
    return repository.updateTheme(theme);
  }
}
