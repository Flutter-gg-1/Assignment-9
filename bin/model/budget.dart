import 'Expenses.dart';
class Budget{
  final int total;
  final List<Expenses> expenses;

  Budget({required this.total, required this.expenses});
  factory Budget.fromJson(Map<String, dynamic> json) {
    return Budget(
      total: json['total'],
      expenses: List<Expenses>.from(
        json['expenses'].map((expense) => Expenses.fromJson(expense)),
      ),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'total': total,
      'expenses': expenses.map((expense) => expense.toJson()).toList(),
    };
  }
}

