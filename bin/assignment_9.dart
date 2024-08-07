import 'dart:convert';

import '../models/company.dart';
import '../utils/data.dart';

void main(List<String> arguments) {
  Company company = Company.fromJson(companyData);
  print('');
  printMarketingEmployees(company);
  printExpenses(company);
}

String printMarketingEmployees(Company company) {
  print('Marketing Employees:');
  var employees = company.departments.marketing.employees
      .map((employee) => employee.toJson());

  for (var employee in employees) {
    print(employee);
    print('');
  }

  return jsonEncode(employees.toList());
}

String printExpenses(Company company) {
  Map<String, dynamic> expense = {
    'engineering': company.departments.engineering.budget?.expenses
        .map((expense) => expense.toJson())
        .toList(),
    'marketing': company.departments.marketing.budget?.expenses
        .map((expense) => expense.toJson())
        .toList()
  };

  expense.forEach(
    (key, value) {
      print('$key : $value');
      print('');
    },
  );
  return jsonEncode(expense);
}
