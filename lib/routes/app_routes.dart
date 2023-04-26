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

import '../features/notes/ui/notes_list_screen.dart';
class AppRoutes {
  static final routes = {
    Routes.songs: (context) => const SongCategories(),
    Routes.home: (context) =>  HomeScreen(),
    Routes.testament: (context) =>  const TestamentScreen(),
    Routes.splash: (context) => const SplashScreen(),
    Routes.notes: (context) => const NewNoteScreen(),
    Routes.notesList: (context) => const NotesListScreen(),
    Routes.radio: (context) => const RadioScreen(),
  };
}
