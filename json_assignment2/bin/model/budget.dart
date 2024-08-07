class Budget {
  int total;
  List<Expenses> exp;

  Budget({required this.total, required this.exp});

  factory Budget.fromJson(Map<String, dynamic> json) {
    return Budget(
        total: json["departments"]["marketing"]["budget"]["total"],
        exp: json["departments"]["marketing"]["budget"]["expenses"]
            .map<Expenses>((element) {
          return Expenses.fromJson(element);
        }).toList());
  }
}

class Expenses {
  String item;
  int amount;

  Expenses({required this.item, required this.amount});

  factory Expenses.fromJson(Map<String, dynamic> json) {
    return Expenses(item: json["item"], amount: json["amount"]);
  }
}
