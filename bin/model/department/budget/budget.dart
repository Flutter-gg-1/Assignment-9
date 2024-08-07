import 'expense.dart';

class Budget {
  num? total;
  List<Expense>? expenses;

  Budget({this.total, this.expenses});

  factory Budget.fromJson(Map<String, dynamic> json) {
    return Budget(
        total: json['total'],
        expenses: (json['expenses'] != null)
            ? (json['expenses'] as List<dynamic>)
                .map((e) => Expense.fromJson(e))
                .toList()
            : null);
  }

  Map<String, dynamic> toJson() {
    return {'total': total};
  }
}
