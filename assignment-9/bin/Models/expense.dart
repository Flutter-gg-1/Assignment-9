class Expense {
  final String item;
  final int amount;

  Expense({required this.item, required this.amount});

  factory Expense.fromJson(Map<String, dynamic> json) {
    return Expense(item: json["item"], amount: json["amount"]);
  }

  Map<String, dynamic> toJson() {
    return {
      "item": item,
      "amount": amount,
    };
  }
}
