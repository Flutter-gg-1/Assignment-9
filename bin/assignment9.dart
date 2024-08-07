import 'models/dataSet.dart';
import 'models/company.dart';
import 'dart:convert';

void main() {
  var company = Company.fromJson(companyData);
 print("\n-------------------------- All marketing employees ------------------------------\n");
  // Display all marketing employees
  var marketingEmployeesJson = displayMarketingEmployees(company);
  print('Marketing Employees: $marketingEmployeesJson');

  print("\n--------------------------- Budget of each department -----------------------------\n");
  // Display the expenses of the budget of each department
  var departmentBudgetsJson = displayDepartmentBudgets(company);
  print('Department Budgets: $departmentBudgetsJson');
  print("\n---------------------------- Check null values -------------------------------------\n");
  // Check for null values in companyData
  try {
    checkNull(companyData);
    print('No null values found in companyData.');
  } catch (e) {
    print('Error: $e');
  }
}

String displayMarketingEmployees(Company company) {
  List<Employee> marketingEmployees = [];
  if (company.departments.containsKey('marketing')) {
    var marketing = company.departments['marketing'];
    if (marketing != null) {
      marketingEmployees = marketing.employee;
    }
  }
  return jsonEncode(marketingEmployees.map((e) => e.toJson()).toList());
}

String displayDepartmentBudgets(Company company) {
  Map<String, dynamic> departmentBudgets = {};
  company.departments.forEach((key, department) {
    if (department.budget != null) {
      departmentBudgets[key] = department.budget!.toJson();
    }
  });
  return jsonEncode(departmentBudgets);
}

void checkNull(Map<String, dynamic> json) {
  json.forEach((value, title) {
    if (value.toLowerCase() == "null") {
      throw FormatException("There is an error with $title");
    }
  });
}
