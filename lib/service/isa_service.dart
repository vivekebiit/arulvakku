import 'package:arulvakku/songs/isarmodel/category_model.dart';
import 'package:arulvakku/songs/isarmodel/response_format.dart';
import 'package:arulvakku/songs/isarmodel/song_title_model.dart';
import 'package:arulvakku/songs/model/Song.dart';
import 'package:arulvakku/songs/model/song_cateogry.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

class IsarService {
  late Future<Isar> db;

  IsarService() {
    db = openDB();
  }

  Future<void> cleanDb() async {
    final isar = await db;
    await isar.writeTxn(() => isar.clear());
  }

  Future<int> saveResultCategory(ResultCategory result) async {
    final isar = await db;
    return isar.writeTxnSync<int>(() => isar.resultCategorys.putSync(result));
  }

  Future<int> saveResponseFormat(ResponseFormat result) async {
    final isar = await db;
    return isar.writeTxnSync<int>(() => isar.responseFormats.putSync(result));
  }

  Future<int> saveResultSongTitle(ResultSongTitle result) async {
    final isar = await db;
    return isar.writeTxnSync<int>(() => isar.resultSongTitles.putSync(result));
  }

  Future<void> clearResponseFomrat() async {
    final isar = await db;
    return isar.writeTxnSync<void>(() => isar.responseFormats.clearSync());
  }

  Future<void> clearCategories() async {
    final isar = await db;
    return isar.writeTxnSync<void>(() => isar.resultCategorys.clearSync());
  }

  Future<void> clearSongTitles() async {
    final isar = await db;
    return isar.writeTxnSync<void>(() => isar.resultSongTitles.clearSync());
  }

  Future<void> clearSongTitlesByCategoryId(int categoryId) async {
    final isar = await db;
    return isar.writeTxnSync<void>(() => isar.resultSongTitles
        .filter()
        .sCategoryIdEqualTo(categoryId)
        .deleteAll());
  }

  Future<bool> deleteTeacher(ResultCategory data) async {
    final isar = await db;
    return isar.writeTxnSync<bool>(
            () => isar.resultCategorys.deleteSync(data.sCategoryId ?? 0));

    // isar.courses.sy
  }

  Stream<List<ResultSongTitle>> listenToSongCount() async* {
    final isar = await db;
    yield* isar.resultSongTitles.where().watch();
  }

  Future<List<ResultCategory>> getAllCategories() async {
    final isar = await db;
    return await isar.resultCategorys.where().findAll();
  }
  Future<int> getSongsCount() async {
    final isar = await db;
    return await isar.resultSongTitles.where().count();
  }

  Future<List<ResultSongTitle>> getResulTitlesByCategoryId(
      int categoryId) async {
    final isar = await db;
    return await isar.resultSongTitles
        .filter()
        .sCategoryIdEqualTo(categoryId)
        .findAll();
  }

  Future<ResponseFormat?> getResponseFormat() async {
    final isar = await db;
    return await isar.responseFormats.where().findFirst();
  }

  Future<Isar> openDB() async {
    if (Isar.instanceNames.isEmpty) {
      final dir = await getApplicationDocumentsDirectory();
      return await Isar.open(
          [ResponseFormatSchema, ResultCategorySchema, ResultSongTitleSchema],
          directory: dir.path, inspector: true);
    }
    return Future.value(Isar.getInstance());
  }
}