import 'package:arulvakku/common/database_utils.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final fetchNotesFromLocalDatabase = FutureProvider<dynamic>((ref) async {
  await Future.delayed(const Duration(seconds: 1));
  return await DBProvider.db.getAllnotes();
});
