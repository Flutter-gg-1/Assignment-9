class ExpensesModel {
  String item;
  int amount;

  ExpensesModel({
    required this.amount,
    required this.item,
  });

  factory ExpensesModel.fromJson(Map<String, dynamic> json) {
    return ExpensesModel(amount: json["amount"], item: json["item"]);
  }

  Map<String, dynamic> toJson() {
    return {"item": item, "amount": amount};
  }
}
