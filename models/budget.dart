import '../utils/handle.dart';

class Budget {
  int total;
  List<Expense> expenses;

  Budget({
    required this.total,
    required this.expenses,
  });

  factory Budget.fromJson(Map<String, dynamic> json) {
    return Budget(
        total: checkValue(value: json['total'], title: 'Budget(total)'),
        expenses: checkValue(
            value: (json['expenses'] as List)
                .map((expense) => Expense.fromJson(expense))
                .toList(),
            title: 'Budget(expenses)'));
  }

  toJson() {
    return {
      'total': total,
      'expenses': expenses.map((expense) => expense.toJson()).toList()
    };
  }
}

class Expense {
  String item;
  int amount;

  Expense({
    required this.item,
    required this.amount,
  });

  factory Expense.fromJson(Map<String, dynamic> json) {
    return Expense(
        item: checkValue(value: json['item'], title: 'Expense(item)'),
        amount: checkValue(value: json['amount'], title: 'Expense(amuont)'));
  }
  toJson() {
    return {'item': item, 'amount': amount};
  }
}
