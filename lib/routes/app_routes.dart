import 'package:arulvakku/features/splash_screen.dart';
import 'package:arulvakku/routes/routes.dart';

import '../features/home_screen.dart';

class AppRoutes {
  static final routes = {
    Routes.home: (context) => const HomeScreen(),
    Routes.splash: (context) => const SplashScreen(),
  };
}
