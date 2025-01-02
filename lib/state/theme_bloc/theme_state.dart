part of 'theme_bloc.dart';


class ThemeState extends Equatable {
  final Brightness mode;

  const ThemeState({required this.mode});

  @override
  List<Object> get props => [mode];
}
