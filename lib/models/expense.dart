import 'package:assignment9/models/check_null.dart';

class Expense {
  final String item;
  final int amount;

  Expense({required this.amount, required this.item});

  factory Expense.fromJson(Map<String, dynamic> json) {
    return Expense(
        amount: checkNull(json['amount'], 'amount'),
        item: checkNull(json['item'], 'item'));
  }

  Map<String, dynamic> toJson() {
    return {
      'item' : item,
      'amount' : amount
    };
  }
}
