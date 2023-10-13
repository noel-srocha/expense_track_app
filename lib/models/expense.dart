import 'package:uuid/uuid.dart';

import './base_model.dart';
import './enums/expense_category.dart';

const uuid = Uuid();

class Expense extends BaseModel {
  final String title;
  final double amount;
  final DateTime? date;
  final ExpenseCategory? category;

  Expense({
    required this.title,
    required this.amount,
    this.date,
    this.category,
  }) : super(id: uuid.v4());
}