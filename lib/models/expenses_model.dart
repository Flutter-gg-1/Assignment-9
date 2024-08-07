import '../helper/check_null.dart';

class ExpensesModel {
  String item;
  int amount;

  ExpensesModel({
    required this.amount,
    required this.item,
  });

  factory ExpensesModel.fromJson(Map<String, dynamic> json) {
    return ExpensesModel(amount: checkNull(data: json["amount"] , title: "amount") , item: checkNull(data: json["item"], title: "item"));
  }

  Map<String, dynamic> toJson() {
    return {"item": item, "amount": amount};
  }
}
