import 'package:arulvakku/features/contact/view/contact_us.dart';
import 'package:arulvakku/features/notes/ui/new_note_screen.dart';
import 'package:arulvakku/features/prayer_request/view/prayers_request_screen.dart';
import 'package:arulvakku/features/prayer_request/view/prayers_view_screen.dart';
import 'package:arulvakku/features/radio/radio_screen.dart';
import 'package:arulvakku/features/splash_screen.dart';
import 'package:arulvakku/features/testament/testament_screen.dart';
import 'package:arulvakku/routes/routes.dart';
import 'package:arulvakku/songs/widgets/song_categories_list_widget.dart';
import 'package:arulvakku/features/home_screen.dart';
import 'package:flutter/material.dart';

import '../features/notes/ui/notes_list_screen.dart';
import '../features/testament/testament_details_screen.dart';
import 'arguments.dart';

class AppRoutes {
  static final routes = {
    Routes.songs: (context) => const SongCategories(),
    Routes.home: (context) => HomeScreen(),
    Routes.testament: (context) => const TestamentScreen(),
    Routes.splash: (context) => const SplashScreen(),
    Routes.notes: (context) => const NewNoteScreen(),
    Routes.notesList: (context) => const NotesListScreen(),
    Routes.radio: (context) => const RadioScreen(),
    Routes.prayerViewScreen: (context) => const PrayerViewScreen(),
    Routes.prayerRequestScreen: (context) => PrayerRequestScreen(),
    Routes.contactUsScreen: (context) => const ContactUsScreen(),
    // Routes.testamentDetails: (context) => const TestamentDetailScreen(),
  };

  static Route<dynamic> errorRoutes(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => Scaffold(
          appBar: AppBar(title: const Text("Error")),
          body: const Center(
            child: Text("Page not found"),
          )),
    );
  }

  static Route<dynamic> generateRoutes(RouteSettings settings) {
    final args = settings.arguments as Argument;
    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );
      case Routes.home:
        return MaterialPageRoute(
          builder: (context) => HomeScreen(),
        );
      case Routes.testament:
        return MaterialPageRoute(
          builder: (context) => const TestamentScreen(),
        );
      case Routes.notes:
        return MaterialPageRoute(
          builder: (context) => const NewNoteScreen(),
        );

      case Routes.notesList:
        return MaterialPageRoute(
          builder: (context) => const NotesListScreen(),
        );

      case Routes.radio:
        return MaterialPageRoute(
          builder: (context) => const RadioScreen(),
        );

      case Routes.testamentDetails:
        return MaterialPageRoute(
          builder: (context) => TestamentDetailScreen(
            argument: args,
          ),
        );

      case Routes.songs:
        return MaterialPageRoute(
          builder: (context) => const SongCategories(),
        );
      default:
        return errorRoutes(settings);
    }
  }
}
