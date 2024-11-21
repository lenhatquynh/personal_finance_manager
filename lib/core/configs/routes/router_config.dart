import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:personal_finance_manager/core/configs/routes/router.dart';
import 'package:personal_finance_manager/main.dart';
import 'package:personal_finance_manager/screens/navigation/navigation.dart';

/// The route configuration.
final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: Routes.navigaiton.path,
      name: Routes.navigaiton.name,
      pageBuilder: (context, state) {
        return const CupertinoPage(child: Navigation());
      },
    ),
    GoRoute(
      path: Routes.homescreen.path,
      name: Routes.homescreen.name,
      pageBuilder: (context, state) {
        return const CupertinoPage(child: MyHomePage(title: "Home"));
      },
    ),
  ],
);