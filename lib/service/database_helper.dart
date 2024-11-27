import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  static Database? _database;

  factory DatabaseHelper() => _instance;
  DatabaseHelper._internal();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, 'budget_tracker.db');

    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE UserSettings (
        userId TEXT PRIMARY KEY,
        currency TEXT,
        appIcon TEXT
      )
    ''');

    await db.execute('''
      CREATE TABLE Categories (
        categoryId TEXT PRIMARY KEY,
        name TEXT,
        type TEXT,
        icon TEXT
      )
    ''');

    await db.execute('''
      CREATE TABLE Transactions (
        transactionId TEXT PRIMARY KEY,
        date TEXT,
        amount REAL,
        type TEXT,
        categoryId TEXT,
        note TEXT,
        FOREIGN KEY (categoryId) REFERENCES Categories(categoryId)
      )
    ''');

    await db.execute('''
      CREATE TABLE Budgets (
        budgetId TEXT PRIMARY KEY,
        categoryId TEXT,
        amount REAL,
        startDate TEXT,
        endDate TEXT,
        isOverall INTEGER,
        FOREIGN KEY (categoryId) REFERENCES Categories(categoryId)
      )
    ''');
  }
}
