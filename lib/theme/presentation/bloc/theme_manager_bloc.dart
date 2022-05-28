import 'package:bandung_tourism/theme/domain/usecases/get_theme.dart';
import 'package:bandung_tourism/theme/domain/usecases/save_theme.dart';
import 'package:bandung_tourism/utils/enum.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'theme_manager_event.dart';
part 'theme_manager_state.dart';

class ThemeManagerBloc extends Bloc<ThemeManagerEvent, ThemeManagerState> {
  final GetTheme getTheme;
  final SaveTheme saveTheme;
  ThemeManagerBloc(this.getTheme, this.saveTheme)
      : super(ThemeManagerInitial()) {
    on<SaveThemeMode>((event, emit) async {
      final isDarkNewValue = event.isDark;

      final result = await saveTheme.execute(isDarkNewValue);

      result.fold((failure) {
        emit(state.copyWith(message: "Error Update Theme"));
      }, (successMessage) {
        emit(state.copyWith(
          isDark: isDarkNewValue,
          message: successMessage,
        ));
      });
    });

    on<LoadTheme>((event, emit) async {
      final result = await getTheme.execute();

      emit(state.copyWith(isDark: result));
    });
  }
}
