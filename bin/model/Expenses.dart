
class Expenses{
  final String item;
  final int amount;

  Expenses({required this.item, required this.amount});

  factory Expenses.fromJson(Map<String, dynamic> json) {
    return Expenses(
      item: json['item'],
      amount: json['amount'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'item': item,
      'amount': amount,
    };
  }
}
