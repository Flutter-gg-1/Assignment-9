class Expense {
  String? item;
  num? amount;

  Expense({this.item, this.amount});

  factory Expense.fromJson(Map<String, dynamic> json) {
    return Expense(item: json['item'], amount: json['amount']);
  }

  Map<String, dynamic> toJson() {
    return {'item': item, 'amount': amount};
  }
}
