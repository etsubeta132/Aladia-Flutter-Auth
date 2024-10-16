import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'theme_state.dart';
part 'theme_event.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  final SharedPreferences sharedPreferences;

  ThemeBloc({required this.sharedPreferences}) : super(const ThemeState()) {
    on<ToggleThemeEvent>((event, emit) async {
      final newThemeMode = event.themeMode == "system"
          ? ThemeMode.system
          : event.themeMode == "dark"
              ? ThemeMode.dark
              : ThemeMode.light;

      emit(ThemeState(themeMode: newThemeMode));
      await sharedPreferences.setString("themeMode", event.themeMode);
    });

    on<InitializeThemeEvent>((event, emit) {
      final themeMode = sharedPreferences.getString("themeMode") ?? "system";
      final initialThemeMode = themeMode == "system"
          ? ThemeMode.system
          : themeMode == "dark"
              ? ThemeMode.dark
              : ThemeMode.light;

      emit(ThemeState(themeMode: initialThemeMode));
    });
  }
}
