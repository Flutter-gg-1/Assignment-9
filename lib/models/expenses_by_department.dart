import 'package:assignment9/dataset.dart';
import 'package:assignment9/models/budget.dart';
import 'package:assignment9/models/company.dart';
import 'package:assignment9/models/department.dart';

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