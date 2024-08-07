import 'department.dart';

class Budget {
  final int total;
  final List<Expenses> expenses;

  Budget({required this.total, required this.expenses});

  factory Budget.fromJson(Map json) {
    return Budget(
        total: json["total"],
        expenses:
            List.from(checkNull(value: json["expenses"], title: "expenses"))
                .map((element) {
          return Expenses.fromJson(element);
        }).toList());
  }

  Map<String, dynamic> toJson() {
    return {
      "total": total,
      "expenses": expenses.map((e) => e.toJson()).toList(),
    };
  }
}

class Expenses {
  final String item;
  final int amount;

  Expenses({required this.item, required this.amount});

  factory Expenses.fromJson(Map json) {
    return Expenses(item: json["item"], amount: json["amount"]);
  }

  Map<String, dynamic> toJson() {
    return {"item": item, "amount": amount};
  }
}
