import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_finance_manager/shared/routes/router_config.dart';
import 'package:personal_finance_manager/shared/theme/theme.dart';
import 'package:personal_finance_manager/state/theme_bloc/theme_bloc.dart';

void main() {
  runApp(const FinanceManagerApp());
}

class FinanceManagerApp extends StatefulWidget {
  const FinanceManagerApp({super.key});

  @override
  State<FinanceManagerApp> createState() => _FinanceManagerAppState();
}

class _FinanceManagerAppState extends State<FinanceManagerApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final brightness = MediaQuery.of(context).platformBrightness;

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ThemeBloc()..add(SetThemeEvent(brightness)),
        ),
      ],
      child: BlocSelector<ThemeBloc, ThemeState, Brightness>(
        selector: (state) {
          return state.mode;
        },
        builder: (context, state) {
          return MaterialApp.router(
            theme: state == Brightness.light ? lightTheme : darkTheme,
            routerConfig: router,
          );
        },
      ),
    );
  }
}
