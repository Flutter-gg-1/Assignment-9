import 'package:assignment9/models/check_null.dart';
import 'package:assignment9/models/expense.dart';

class Budget {
  final int total;
  final List<Expense> expenses;

  Budget({required this.total, required this.expenses});

  factory Budget.fromJson(Map<String, dynamic> json) {
    List<Expense> expensesList = [];
    List originalExpenses = checkNull(json['expenses'], 'expenses');
    for (var expense in originalExpenses) {
      expensesList.add(Expense.fromJson(expense));
    }
    return Budget(
        total: checkNull(json['total'], 'total'),
        expenses: expensesList);
  }

  Map<String, dynamic> toJson() {
    return {
      'total' : total,
      'expenses' : expenses.map((e) => e.toJson()).toList()
    };
  }
}
