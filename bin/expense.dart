import 'check_null_function.dart';
class Expense{
  final String item;
  final int amount;

  Expense({required this.amount, required this.item});

  factory Expense.fromJson(Map<String, dynamic> json){
    return Expense(amount: checkNull(value: json["amount"], title: "amount"), item: checkNull(value: json["item"], title: "item"));
  }

  Map<String, dynamic> toJson(){
    return{
      "item": item,
      "amount": amount
    };
  }
}