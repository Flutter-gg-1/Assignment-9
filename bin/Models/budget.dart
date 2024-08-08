import 'expense.dart';

class Budget {
  final int total;
  final List<Expense> expenses;

  Budget({required this.total, required this.expenses});

  factory Budget.fromJson(Map<String, dynamic> json) {
    return Budget(
        total: json["total"],
        expenses: (List.from(json["expenses"]).map((element) {
          return Expense.fromJson(element);
        })).toList());
  }

  Map<String, dynamic> toJson() {
    return {
      "total": total,
      "expenses": expenses.map((element) {
        return element.toJson();
      })
    };
  }

  Map<String, dynamic> getExpenses() {
    return {
      "expenses": expenses.map((element) {
        return element.toJson();
      })
    };
  }
}
