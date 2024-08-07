import 'package:asg9/models/budget_model.dart';
import 'package:asg9/models/employees_model.dart';

class EngineeringModel {
  List<EmployeesModel> employeesModel;

  BudgetModel? budgetModel;

  EngineeringModel({required this.employeesModel , required this.budgetModel});

  factory EngineeringModel.fromJson(Map<String, dynamic> json) {
    List<EmployeesModel> tempList = [];
    for (var val in json["employees"]) {
      tempList.add(EmployeesModel.fromJson(val));
    }

BudgetModel? tmepModel;
    if(json["budget"] == null){
      tmepModel = null;
      print("eorr there is null value eorr in Budget of EngineeringModel");
      throw FormatException;

    }
    else{
     tmepModel = BudgetModel.fromJson(json["budget"]);
    }

    return EngineeringModel(employeesModel: tempList ,budgetModel: tmepModel);
  }

  Map<String, dynamic> toJson() {
    List<Map<String, dynamic>> lisTemp = [];

    for (var val in employeesModel) {
      lisTemp.add(val.toJson());
    }

    return {"employees": lisTemp,

    "budget" : budgetModel?.toJson()
    
    };
  }
}
