import 'package:flutter/material.dart';
import 'package:personal_finance_manager/core/configs/routes/router_config.dart';
import 'package:personal_finance_manager/core/configs/theme/theme_scope.dart';
import 'package:personal_finance_manager/core/configs/theme/theme_scope_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final preferences = await SharedPreferences.getInstance();

  runApp(
    ThemeScopeWidget(
      preferences: preferences,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final theme = ThemeScope.of(context);

    return MaterialApp.router(
      themeMode: theme.themeMode,
      theme: ThemeData(extensions: [theme.appTheme]),
      darkTheme: ThemeData(extensions: [theme.appTheme]),
      routerConfig: router,
    );
  }
}
