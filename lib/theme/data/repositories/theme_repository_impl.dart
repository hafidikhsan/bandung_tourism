import 'package:bandung_tourism/common/exception.dart';
import 'package:bandung_tourism/common/failure.dart';
import 'package:bandung_tourism/theme/data/datasources/theme_local_data_source.dart';
import 'package:bandung_tourism/theme/domain/repositories/theme_repository.dart';
import 'package:bandung_tourism/utils/enum.dart';
import 'package:dartz/dartz.dart';

class ThemeRepositoryImpl implements ThemeRepository {
  final ThemeLocalDataSource localDataSource;

  ThemeRepositoryImpl({
    required this.localDataSource,
  });

  @override
  Future<Either<Failure, String>> updateTheme(ThemeModeEnum theme) async {
    try {
      final result = await localDataSource.updateTheme(theme);
      return Right(result);
    } on DatabaseException catch (e) {
      return Left(DatabaseFailure(e.message));
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<ThemeModeEnum> loadTheme() async {
    final result = await localDataSource.loadTheme();

    return result;
  }
}
