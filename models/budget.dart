class Budget {
  int total;
  List<Expense> expenses;

  Budget({
    required this.total,
    required this.expenses,
  });

  factory Budget.fromJson(Map<String, dynamic> json) {
    return Budget(
        total: json['total'],
        expenses: (json['expenses'] as List)
            .map((expense) => Expense.fromJson(expense))
            .toList());
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
    return Expense(item: json['item'], amount: json['amount']);
  }
  toJson() {
    return {'item': item, 'amount': amount};
  }
}
