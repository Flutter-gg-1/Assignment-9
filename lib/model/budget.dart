import 'expense.dart';

class Budget {
  int total;
  List<Expense> expenses;

  /// Constructs a Budget instance with the given total amount and list of expenses.
  Budget({required this.total, required this.expenses});

  /// Creates a Budget instance from a JSON object.
  factory Budget.fromJson(Map<String, dynamic> json) {
    return Budget(
      total: json['total'],
      expenses: (json['expenses'] as List).map((i) => Expense.fromJson(i)).toList(),
    );
  }

  /// Converts the Budget instance to a JSON object.
  Map<String, dynamic> toJson() {
    return {
      'total': total,
      'expenses': expenses.map((e) => e.toJson()).toList(),
    };
  }
}