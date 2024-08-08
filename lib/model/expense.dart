class Expense {
  // The name of the item for which the expense is made
  String item;

  // The amount of money spent on the item
  int amount;

  // Constructor for the Expense class, requiring both item and amount to be provided
  Expense({required this.item, required this.amount});

  // Factory constructor to create an Expense instance from a JSON map
  factory Expense.fromJson(Map<String, dynamic> json) {
    return Expense(
      // Extract the item value from the JSON map
      item: json['item'],

      // Extract the amount value from the JSON map
      amount: json['amount'],
    );
  }

  // Method to convert an Expense instance to a JSON map
  Map<String, dynamic> toJson() {
    return {
      'item': item,
      'amount': amount,
    };
  }
}