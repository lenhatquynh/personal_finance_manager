import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:personal_finance_manager/core/configs/routes/router.dart';
import 'package:personal_finance_manager/screens/budgets/budget_screen.dart';
import 'package:personal_finance_manager/screens/home/home_screen.dart';
import 'package:personal_finance_manager/screens/insights/insight_screen.dart';
import 'package:personal_finance_manager/screens/navigation/navigation.dart';
import 'package:personal_finance_manager/screens/setting/setting_screen.dart';

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
      path: Routes.homeScreen.path,
      name: Routes.homeScreen.name,
      pageBuilder: (context, state) {
        return const CupertinoPage(child: HomeScreen(title: "Home"));
      },
    ),
    GoRoute(
      path: Routes.insightScreen.path,
      name: Routes.insightScreen.name,
      pageBuilder: (context, state) {
        return const CupertinoPage(child: InsightScreen(title: "Insights"));
      },
    ),
    GoRoute(
      path: Routes.budgetScreen.path,
      name: Routes.budgetScreen.name,
      pageBuilder: (context, state) {
        return const CupertinoPage(child: BudgetScreen(title: "Budgets"));
      },
    ),
    GoRoute(
      path: Routes.settingScreen.path,
      name: Routes.settingScreen.name,
      pageBuilder: (context, state) {
        return const CupertinoPage(child: SettingScreen(title: "Settings"));
      },
    ),
  ],
);
