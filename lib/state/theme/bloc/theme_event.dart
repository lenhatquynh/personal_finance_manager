part of 'theme_bloc.dart';

abstract class ThemeEvent extends Equatable {
  const ThemeEvent();

  @override
  List<Object> get props => [];
}

class SetThemeEvent extends ThemeEvent {
  final Brightness mode;

  const SetThemeEvent(this.mode);

  @override
  List<Object> get props => [mode];
}
