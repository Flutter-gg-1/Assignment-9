class Expenses {
  final String item;
  final int amount;

  Expenses({required this.item, required this.amount});
  factory Expenses.fromJson(Map<String, dynamic> jason) {
    return Expenses(item: jason['item'], amount: jason['amount']);
  }

  toJason() {
    Map<String, dynamic>;
    return {"item": item, "amount": amount};
  }
}
