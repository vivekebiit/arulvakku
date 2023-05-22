import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

import '../features/notes/data/model/notes.dart';

class DBProvider {
  DBProvider._();

  static final DBProvider db = DBProvider._();

  Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    // if _database is null we instantiate it
    _database = await initDB();
    return _database!;
  }

  initDB() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "notes_db.db");
    return await openDatabase(path, version: 1, onOpen: (db) {},
        onCreate: (Database db, int version) async {
      await db.execute(
          "CREATE TABLE notes (id TEXT PRIMARY KEY,title TEXT,message TEXT,verses TEXT,date_time TEXT)");
    });
  }

  newEmail(Notes note) async {
    final db = await database;
    //insert to the table using the new id
    var raw = await db.rawInsert(
        "INSERT Into notes (id,title,message,verses,date_time)"
        " VALUES (?,?,?,?,?)",
        [
          note.id,
          note.title,
          note.message,
          note.verses,
          note.dateTime,
        ]);
    debugPrint("Raw input $raw");
    return raw;
  }

  updateNotes(Notes cart) async {
    final db = await database;
    // var res = await db.update("carts", {"qty": cart!.qty},
    //     where: 'id = ?', whereArgs: [cart.id]);
    // return res;
  }

  getNotesByID(String id) async {
    final db = await database;
    var res = await db.query("notes", where: "id = ?", whereArgs: [id]);
    return res.isNotEmpty ? Notes.fromJson(res.first) : null;
  }

  getnotesByStatus(String status) async {
    final db = await database;
    var res =
        await db.query("notes", where: "message = ?", whereArgs: [status]);
    return res.isNotEmpty ? Notes.fromJson(res.first) : null;
  }

  Future<dynamic> getAllnotes() async {
    try {
      final db = await database;
      var res = await db.query("notes");
      List<Notes> list =
          res.isNotEmpty ? res.map((c) => Notes.fromJson(c)).toList() : [];
      return list;
    } catch (e) {
      return e.toString();
    }
  }

  deletenotes(int id) async {
    final db = await database;
    return db.delete("notes", where: "id = ?", whereArgs: [id]);
  }

  deleteAll() async {
    final db = await database;
    return db.delete("notes");
  }
}
