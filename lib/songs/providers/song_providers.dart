import 'dart:math';

import 'package:arulvakku/service/isa_service.dart';
import 'package:arulvakku/songs/isarmodel/category_model.dart';
import 'package:arulvakku/songs/isarmodel/response_format.dart';
import 'package:arulvakku/songs/notifiers/controller_position_notifier.dart';
import 'package:arulvakku/songs/notifiers/search_categories_notifier.dart';
import 'package:arulvakku/songs/notifiers/search_local_categories_notifier.dart';
import 'package:arulvakku/songs/notifiers/search_songs_notifier.dart';
import 'package:arulvakku/songs/notifiers/serch_text_notifier.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/shared_provider/shared_providers.dart';

final getSongsCategoryListProvider =
    FutureProvider.autoDispose<Response>((ref) async {
  return ref.watch(dioClientProvider).get(
      'https://arulvakku.binaryexpertsystems.com/Arulvakku/GetSongsCategoryList');
});

final getLocalSongsCategoryListProvider =
    FutureProvider.autoDispose<List<ResultCategory>>((ref) async {
  var localData = await ref.watch(isarInstanceProvider).getAllCategories();

  if (localData.isEmpty) {
    Response networkData = await ref.read(getSongsCategoryListProvider.future);
    print("data: $networkData");

    if (networkData.statusCode == 200) {
      CategoryModel _categoryModel =
          CategoryModel.fromJson(networkData.data as Map<String, dynamic>);
      print(_categoryModel);

      ResponseFormat format = ResponseFormat(
          version: _categoryModel.version,
          licensedBy: _categoryModel.licensedBy,
          statusCode: _categoryModel.statusCode,
          requestUri: _categoryModel.requestUri,
          method: _categoryModel.requestUri,
          isTransactionDone: _categoryModel.isTransactionDone);

      IsarService isarService = await ref.watch(isarInstanceProvider);
      // Clearing tables to void duplications, just incase
      await isarService.clearResponseFomrat();
      await isarService.clearCategories();

      isarService.saveResponseFormat(format);
      if (_categoryModel?.result != null) {
        for (var element in _categoryModel!.result!) {
          await isarService.saveResultCategory(element);
        }
      }
      localData = await ref.watch(isarInstanceProvider).getAllCategories();
    }
  }
  // if(lo)
  return localData;
});

final getSongsListProvider =
    FutureProvider.autoDispose.family<dynamic, int>((ref, sCategoryId) async {
  return ref.watch(dioClientProvider).post(
      'https://arulvakku.binaryexpertsystems.com/Arulvakku/GetSongsListByCategory',
      data: toJsonToGetSongs(sCategoryId));
});

final searchCategoriesProvider = StateNotifierProvider.autoDispose<
    SearchCategoriesNotifier, AsyncValue<dynamic>>((ref) {
  final data = ref.watch(getSongsCategoryListProvider);
  // final dataLocal = ref.watch(searchLocalCategoriesProvider);

  return SearchCategoriesNotifier(data);
});

final searchLocalCategoriesProvider = StateNotifierProvider.autoDispose<
    SearchLocalCategoriesNotifier, AsyncValue<List<ResultCategory?>>>((ref) {
  final data = ref.watch(getLocalSongsCategoryListProvider);

  return SearchLocalCategoriesNotifier(data);
});

final searchSongsProvider = StateNotifierProvider.autoDispose
    .family<SearchSongsNotifier, AsyncValue<dynamic>, int>((ref, sCategoryId) {
  final data = ref.watch(getSongsListProvider(sCategoryId));
  return SearchSongsNotifier(data);
});

final controllerPositionProvider =
    StateNotifierProvider<ControllerPositionNotifier, int>((ref) {
  return ControllerPositionNotifier();
});

final searchCategoryTextProvider = StateNotifierProvider.autoDispose<
    SearchTextNotifier, TextEditingController>((ref) => SearchTextNotifier());

final searchSongTextProvider = StateNotifierProvider.autoDispose<
    SearchTextNotifier, TextEditingController>((ref) => SearchTextNotifier());

Map<String, dynamic> toJsonToGetSongs(int sCategoryId) => {
      'sCategoryId': sCategoryId,
    };
