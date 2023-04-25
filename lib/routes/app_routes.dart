import 'package:arulvakku/features/contact/view/contact_us.dart';
import 'package:arulvakku/features/prayer_request/view/prayers_request_screen.dart';
import 'package:arulvakku/features/prayer_request/view/prayers_view_screen.dart';
import 'package:arulvakku/features/splash_screen.dart';
import 'package:arulvakku/routes/routes.dart';
import 'package:arulvakku/songs/widgets/song_categories_list_widget.dart';
import 'package:arulvakku/features/home_screen.dart';
class AppRoutes {
  static final routes = {
    Routes.songs: (context) => const SongCategories(),
    Routes.home: (context) => HomeScreen(),
    Routes.splash: (context) => const SplashScreen(),
    Routes.prayerViewScreen: (context) => const PrayerViewScreen(),
    Routes.prayerRequestScreen: (context) => PrayerRequestScreen(),
    Routes.contactUsScreen: (context) => const ContactUs(),
  };
}
