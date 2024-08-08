class Expenses {
  final String item;
  final int amount;
  Expenses({required this.amount, required this.item});

  factory Expenses.fromJson(Map<String, dynamic> json) {
    return Expenses(item: json['item'], amount: json['amount']);
  }
  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {};
    map["item"] = item;
    map["amount"] = amount;

    return map;
  }
}
