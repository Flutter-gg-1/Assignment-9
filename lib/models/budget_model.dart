


import 'package:asg9/models/expenses_model.dart';

class BudgetModel{

  int total;
  List <ExpensesModel>   expensesModelLis = [];




  BudgetModel({
    required this.expensesModelLis,
    required this.total
  });



  Map<String, dynamic> toJson() {



    List<Map<String, dynamic>> lisTemp = [];


    for(var val in expensesModelLis){
      lisTemp.add(val.toJson());
    }

    return{

      "total" : total,

      "expenses": lisTemp

    };

  }


  factory BudgetModel.fromJson(Map<String, dynamic> json) {
List<ExpensesModel> tempList = [];
    for(var val in json["expenses"] ){
      tempList.add(ExpensesModel.fromJson(val));
    }


    return BudgetModel(expensesModelLis: tempList, total: json["total"]);


  }

}