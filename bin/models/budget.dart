import 'expenses.dart';
class Budget {
  final int total;
  final List<Expenses> expenses;

  Budget({required this.expenses, required this.total});

  factory Budget.fromJson(Map<String, dynamic> json) {
    return Budget(
      expenses: (json["expenses"] as List)
          .map((element) => Expenses.fromJson(element))
          .toList(),
      total: json["total"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "total": total,
      "expenses": expenses.map((element) => element.toJson()).toList(),
    };
  }
}