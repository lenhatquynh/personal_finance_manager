import 'package:sqflite/sqflite.dart';
import 'package:uuid/uuid.dart';

import 'database_helper.dart';

class BudgetsService {
  final DatabaseHelper _dbHelper = DatabaseHelper();
  final uuid = const Uuid();

  // CREATE a new budget
  Future<void> insertBudget(String categoryId, double amount, String startDate, String endDate, bool isOverall) async {
    final db = await _dbHelper.database;
    await db.insert(
      'Budgets',
      {
        'budgetId': uuid.v4(),
        'categoryId': categoryId,
        'amount': amount,
        'startDate': startDate,
        'endDate': endDate,
        'isOverall': isOverall ? 1 : 0,
      },
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // READ all budgets
  Future<List<Map<String, dynamic>>> getAllBudgets() async {
    final db = await _dbHelper.database;
    return await db.query('Budgets');
  }

  // UPDATE a budget
  Future<void> updateBudget(String budgetId, String categoryId, double amount, String startDate, String endDate, bool isOverall) async {
    final db = await _dbHelper.database;
    await db.update(
      'Budgets',
      {
        'categoryId': categoryId,
        'amount': amount,
        'startDate': startDate,
        'endDate': endDate,
        'isOverall': isOverall ? 1 : 0,
      },
      where: 'budgetId = ?',
      whereArgs: [budgetId],
    );
  }

  // DELETE a budget
  Future<void> deleteBudget(String budgetId) async {
    final db = await _dbHelper.database;
    await db.delete('Budgets', where: 'budgetId = ?', whereArgs: [budgetId]);
  }
}
