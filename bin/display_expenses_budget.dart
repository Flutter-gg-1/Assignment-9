
import 'data.dart';
displayExpenseBudget(){
  final department = companyData["departments"] as Map;
  final Map<String, dynamic> expenseBudget = {};

  department.forEach((key, value) {
    if(value["budget"] != null){
     expenseBudget[key] = value["budget"]["expenses"];
    }
  },);
  return expenseBudget;
  }
