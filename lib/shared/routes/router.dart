class AppRouter {
  String name;
  String path;
  AppRouter({
    required this.name,
    required this.path,
  });
}

class Routes {
  static AppRouter navigaiton = AppRouter(name: "/", path: '/');
  static AppRouter homeScreen = AppRouter(name: "/home", path: '/home');
  static AppRouter insightScreen = AppRouter(name: "/insight", path: '/insight');
  static AppRouter budgetScreen = AppRouter(name: "/budget", path: '/budget');
  static AppRouter settingScreen = AppRouter(name: "/setting", path: '/setting');
}
