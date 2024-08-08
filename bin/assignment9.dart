import 'dart:convert';
import 'models/compny_data.dart';
import 'models/check_null.dart';
import 'data_set.dart';
import 'models/employee.dart';
import 'models/departments.dart';



void main() {
  Map<String, dynamic> data = {};
  CompanyData companyData = CompanyData.fromJson(data);

  String marketingEmployeesJson = companyData.getAllMarketingEmployeesJson();
  print('Marketing Employees:');
  print(marketingEmployeesJson);

  String departmentExpensesJson = companyData.getExpensesOfEachDepartmentJson();
  print('\nDepartment Expenses:');
  print(departmentExpensesJson);
}


String getAllMarketingEmployeesJson() {
    final List<Employees> marketingEmployees = departments.marketing.employees;
    final List<Map<String, dynamic>> employeesJsonList = marketingEmployees.map((employee) => employee.toJson()).toList();
    return jsonEncode({'marketing_employees': employeesJsonList});
  }

  String getExpensesOfEachDepartmentJson() {
    final Map<String, dynamic> departmentExpenses = {};

    departments.toJson().forEach((key, value) {
      departmentExpenses[key] = value['budget']['expenses'];
    });

    return jsonEncode({'department_expenses': departmentExpenses});
  }
