import 'package:bandung_tourism/theme/common/failure.dart';
import 'package:bandung_tourism/theme/utils/enum.dart';
import 'package:dartz/dartz.dart';

abstract class ThemeRepository {
  Future<Either<Failure, String>> updateTheme(ThemeModeEnum theme);
  Future<ThemeModeEnum> loadTheme();
}
