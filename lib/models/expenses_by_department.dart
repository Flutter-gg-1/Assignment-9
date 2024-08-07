import 'package:assignment9/dataset.dart';            // dataset
import 'package:assignment9/models/budget.dart';      // budget class
import 'package:assignment9/models/company.dart';     // company class
import 'package:assignment9/models/department.dart';  // department class

// function to get expenses by department
Map<String, dynamic> expensesByDepartment() {
  Company company = Company.fromJson(companyData);
  Department department = Department.fromJson(company.toJson()['departments']);
  Map<String,dynamic> map = {};
  for(var key in department.toJson().keys.toList()) {
    if(department.toJson()[key].containsKey('budget')) {
      Budget budget = Budget.fromJson(department.toJson()[key]['budget']);
      map[key] = budget.toJson()['expenses'];
    }
  }
  return map;
}