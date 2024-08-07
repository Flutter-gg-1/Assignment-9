import 'package:assignment9/dataset.dart';            // dataset
import 'package:assignment9/models/company.dart';     // company class
import 'package:assignment9/models/department.dart';  // department class
import 'package:assignment9/models/marketing.dart';   // marketing class

// function to get employees in marketing department
Map getMarketingEmployees() {
  Company company = Company.fromJson(companyData);
  Department department = Department.fromJson(company.toJson()['departments']);
  Marketing marketing = Marketing.fromJson(department.toJson()['marketing']);
  List employees = marketing.toJson()['employees'];
  Map map = {};
  for(int i=0; i<employees.length; i++) {
    map[i+1] = employees[i];
  }
  return map;
}