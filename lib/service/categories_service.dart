import 'package:sqflite/sqflite.dart';
import 'package:uuid/uuid.dart';

import 'database_helper.dart';

class CategoriesService {
  final DatabaseHelper _dbHelper = DatabaseHelper();
  final uuid = const Uuid();

  // CREATE a new category
  Future<void> insertCategory(String name, String type, String icon) async {
    final db = await _dbHelper.database;
    await db.insert(
      'Categories',
      {
        'categoryId': uuid.v4(),
        'name': name,
        'type': type,
        'icon': icon,
      },
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // READ all categories
  Future<List<Map<String, dynamic>>> getAllCategories() async {
    final db = await _dbHelper.database;
    return await db.query('Categories');
  }

  // UPDATE a category
  Future<void> updateCategory(String categoryId, String name, String type, String icon) async {
    final db = await _dbHelper.database;
    await db.update(
      'Categories',
      {
        'name': name,
        'type': type,
        'icon': icon,
      },
      where: 'categoryId = ?',
      whereArgs: [categoryId],
    );
  }

  // DELETE a category
  Future<void> deleteCategory(String categoryId) async {
    final db = await _dbHelper.database;
    await db.delete('Categories', where: 'categoryId = ?', whereArgs: [categoryId]);
  }
}
