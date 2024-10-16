part of 'theme_bloc.dart';

abstract class ThemeEvent {}

class ToggleThemeEvent extends ThemeEvent {
  final String themeMode;

  ToggleThemeEvent({required this.themeMode});
}

class InitializeThemeEvent extends ThemeEvent {
  InitializeThemeEvent();
}
