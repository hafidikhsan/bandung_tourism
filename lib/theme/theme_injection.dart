import 'package:bandung_tourism/theme/data/datasources/database_helper.dart';
import 'package:bandung_tourism/theme/data/datasources/theme_local_data_source.dart';
import 'package:bandung_tourism/theme/data/repositories/theme_repository_impl.dart';
import 'package:bandung_tourism/theme/domain/repositories/theme_repository.dart';
import 'package:bandung_tourism/theme/domain/usecases/get_theme.dart';
import 'package:bandung_tourism/theme/domain/usecases/save_theme.dart';
import 'package:bandung_tourism/theme/presentation/bloc/theme_manager_bloc.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void init() {
  // helper
  locator.registerLazySingleton<DatabaseHelper>(() => DatabaseHelper());

  // data sources
  locator.registerLazySingleton<ThemeLocalDataSource>(
      () => ThemeDataSourceImpl(databaseHelper: locator()));

  // repository
  locator.registerLazySingleton<ThemeRepository>(
    () => ThemeRepositoryImpl(
      localDataSource: locator(),
    ),
  );

  // use case
  locator.registerLazySingleton(() => GetTheme(locator()));
  locator.registerLazySingleton(() => SaveTheme(locator()));

  // bloc
  locator.registerFactory(
    () => ThemeManagerBloc(
      locator(),
      locator(),
    ),
  );
}
