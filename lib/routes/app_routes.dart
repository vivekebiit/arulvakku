import 'package:arulvakku/features/splash_screen.dart';
import 'package:arulvakku/routes/routes.dart';
import 'package:arulvakku/songs/song_categories_screen.dart';

import '../features/home_screen.dart';

class AppRoutes {
  static final routes = {
    Routes.songs: (context) => const SongCategories(),
    Routes.home: (context) => HomeScreen(),
    Routes.splash: (context) => const SplashScreen(),
  };
}
