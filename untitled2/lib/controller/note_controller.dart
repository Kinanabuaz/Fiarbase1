import 'package:flutter/cupertino.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import '../modle/note_modle.dart';

class Notecontroller extends ChangeNotifier {
  late Database database;
   List<NoteModle> list = [];

  openDataBaseFile() async {
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'note.db');
    database = await openDatabase(path, version: 1,
      onCreate: (db, version) async {
        await db.execute(
            'CREATE TABLE not (id INTEGER PRIMARY KEY, name TEXT)');
      },);
  }

  insertNote({required String msg}) async {
    await database.rawInsert("INSERT INTO note(msg) VALUES('$msg')");
  }

  updateNote({required String msg, required int id}) async {
    await database.rawUpdate("Update note set msg = '$msg'where id = '$id' ");
  }

  deleteNote({required int id}) async {
    await database.rawDelete("delete FROM note Where id = '$id' ");
  }

  // getAllNotes() async {
  //    List<NoteModle>list=[];
  //   List<Map> listData = await database.rawQuery("SELECT * FROM note");
  //   for (Map i in listData) {
  //     list.add(NoteModle.fromJson(json: i));
  //   }
  //   notifyListeners();
  // }
}
