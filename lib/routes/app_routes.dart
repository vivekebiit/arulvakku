import 'package:arulvakku/features/splash_screen.dart';
import 'package:arulvakku/routes/routes.dart';
import 'package:arulvakku/songs/widgets/song_categories_list_widget.dart';
import 'package:arulvakku/features/home_screen.dart';
class AppRoutes {
  static final routes = {
    Routes.songs: (context) => const SongCategories(),
    Routes.home: (context) => HomeScreen(),
    Routes.splash: (context) => const SplashScreen(),
  };
}
