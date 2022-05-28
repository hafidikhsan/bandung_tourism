import 'package:bandung_tourism/common/failure.dart';
import 'package:bandung_tourism/utils/enum.dart';
import 'package:dartz/dartz.dart';

abstract class ThemeRepository {
  Future<Either<Failure, String>> updateTheme(ThemeModeEnum theme);
  Future<ThemeModeEnum> loadTheme();
}
