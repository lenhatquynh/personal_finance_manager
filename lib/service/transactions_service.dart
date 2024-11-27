import 'package:sqflite/sqflite.dart';
import 'package:uuid/uuid.dart';

import 'database_helper.dart';

class TransactionsService {
  final DatabaseHelper _dbHelper = DatabaseHelper();
  final uuid = const Uuid();

  // CREATE a new transaction
  Future<void> insertTransaction(String date, double amount, String type, String categoryId, String note) async {
    final db = await _dbHelper.database;
    await db.insert(
      'Transactions',
      {
        'transactionId': uuid.v4(),
        'date': date,
        'amount': amount,
        'type': type,
        'categoryId': categoryId,
        'note': note,
      },
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // READ all transactions
  Future<List<Map<String, dynamic>>> getAllTransactions() async {
    final db = await _dbHelper.database;
    return await db.query('Transactions');
  }

  // UPDATE a transaction
  Future<void> updateTransaction(String transactionId, String date, double amount, String type, String categoryId, String note) async {
    final db = await _dbHelper.database;
    await db.update(
      'Transactions',
      {
        'date': date,
        'amount': amount,
        'type': type,
        'categoryId': categoryId,
        'note': note,
      },
      where: 'transactionId = ?',
      whereArgs: [transactionId],
    );
  }

  // DELETE a transaction
  Future<void> deleteTransaction(String transactionId) async {
    final db = await _dbHelper.database;
    await db.delete('Transactions', where: 'transactionId = ?', whereArgs: [transactionId]);
  }
}
