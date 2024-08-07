



import 'package:asg9/models/budget_model.dart';
import 'package:asg9/models/employees_model.dart';

class MarketingModel{

  List <EmployeesModel> employeesModel;

  BudgetModel budgetModel;



  MarketingModel({
    required this.budgetModel,
    required this.employeesModel
  });



  Map<String, dynamic> toJson() {


    List<Map<String, dynamic>> lisTemp = [];

    for(var val in employeesModel ){

      lisTemp.add(val.toJson());
    }


    return{

      "employees" : lisTemp,
      "budget" : budgetModel



    };


  }


  factory MarketingModel.fromJson(Map<String, dynamic> json) {

    List<EmployeesModel> tempList = [];
    for (var val in json["employees"]) {
      tempList.add(EmployeesModel.fromJson(val));
    }


    return MarketingModel(budgetModel: BudgetModel.fromJson(json["budget"]), employeesModel: tempList);


  }

}