import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:io';

const dbname = 'myDatabase';
const dbVersion = 1;
const tableName = 'table_first';
const columnId = '_id';
const columnName = 'name';

class DatabaseHelper{

  DatabaseHelper._privateConstructor();
  final DatabaseHelper instance = DatabaseHelper._privateConstructor();


}
