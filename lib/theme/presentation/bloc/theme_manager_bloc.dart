import 'package:bandung_tourism/utils/enum.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'theme_manager_event.dart';
part 'theme_manager_state.dart';

class ThemeManagerBloc extends Bloc<ThemeManagerEvent, ThemeManagerState> {
  ThemeManagerBloc() : super(ThemeManagerInitial()) {
    on<LoadThemeMode>((event, emit) {
      final isDarkNewValue = event.isDark;

      emit(state.copyWith(isDark: isDarkNewValue));
    });
  }
}
