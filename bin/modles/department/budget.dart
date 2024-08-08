import 'expenses.dart';
class Budget {
  
  final List<Expenses> expenses;

  Budget( { required this.expenses});

  factory Budget.fromJson(Map<String, dynamic> json) {
    return Budget(
       expenses: 
           (json['expenses'] as List).map((e) => Expenses.fromJson(e)).toList()
         ,
    );
  }
  Map<String, dynamic> toJson() {
    return {
    
      'expenses': expenses.map((e) => e.toJason()).toList(),
    };
  }
}
