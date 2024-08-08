
class Expenses {
  final String item;
  final int amount;

  Expenses({required this.amount, required this.item});

  factory Expenses.fromJson(Map<String, dynamic> json) {
    return Expenses(
        amount: json["amount"] as int, item: json["item"] as String);
  }

  Map<String, dynamic> toJson() => {"item": item, "amount": amount};
}