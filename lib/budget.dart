import 'expenses.dart';

class Budget {
  final int total;
  List<Expenses> expenses;

  Budget({required this.total, required this.expenses});

  factory Budget.fromJson(Map<String, dynamic> json) {
    return Budget(
        total: json['total'],
        expenses: List.from(json["expenses"]).map((element) {
          return Expenses.fromJson(element);
        }).toList());
  }
  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {};
    map["total"] = total;
    map["expenses"] = expenses;
    return map;
  }
}
