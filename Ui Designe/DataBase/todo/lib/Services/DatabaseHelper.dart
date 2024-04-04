import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:todo/Models/Note_Models.dart';

class DatabaseHelper {

  static const int _version = 1;
  static const String dbname = "Notes.db";
  static Future <Database> _getDB() async {
    return openDatabase(join(await getDatabasesPath(),dbname),
    onCreate: (db, version) async  =>  await db.execute("""
        CREATE TABLE Notes(
          id INTEGER PRIMARY KEY,
          title TEXT NOT NULL,
          description TEXT NOT NULL
        );
"""),
version: _version
    );
  }
  static Future<int> addNotes(Note note) async{ 
    final db = await _getDB();
    return await db.insert("Note", note.toJson(),
    conflictAlgorithm: ConflictAlgorithm.replace
    );
  }
   static Future<int> updatenotes(Note note) async{
    final db = await _getDB();
    return await db.update("Note", note.toJson(),
    where: 'id = ?',
    whereArgs: [note.id],
    conflictAlgorithm: ConflictAlgorithm.replace
    );
   }
   static Future<int> deletenote(Note note) async {
    final db = await _getDB();
    return await db.delete("Note",
      where: 'id = ?',
      whereArgs: [note.id],
    );
   }
   static Future<List<Note>?> viewallnotes() async {
    final db = await _getDB();
    final List<Map<String,dynamic>> maps = await db.query("Note");
    if(maps.isEmpty){
      return null;
    }
    return List.generate(maps.length, (index) => Note.fromJson(maps[index]));
   }
}