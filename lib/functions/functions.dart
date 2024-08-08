import 'dart:convert';
import '../model/company_data.dart';

/// Converts the list of employees in the 'marketing' department to a JSON string.
/// If the 'marketing' department does not exist or has no employees, an empty list is returned.
String displayMarketingEmployees(CompanyData companyData) {
  var marketingEmployees =
      companyData.departments['marketing']?.employees ?? [];
  return jsonEncode(marketingEmployees.map((e) => e.toJson()).toList());
}

/// Converts the budget expenses of all departments to a JSON string.
/// If a department does not have a budget, an empty list of expenses is returned for that department.
String displayBudgetExpenses(CompanyData companyData) {
  var departments = companyData.departments;
  var expenses =
  departments.map((k, v) => MapEntry(k, v?.budget?.expenses ?? []));
  return jsonEncode(expenses);
}

/// Checks for null or invalid values in the company data.
/// Throws a [FormatException] if any department has no employees,
/// if any employee has incomplete data, or if any budget or expense has invalid values.
void checkNullValues(CompanyData companyData) {
  if (companyData.departments.isEmpty) {
    throw FormatException('Company data is empty');
  }

  companyData.departments.forEach((departmentName, department) {
    if (department.employees.isEmpty) {
      throw FormatException('Department $departmentName has no employees');
    }

    department.employees.forEach((employee) {
      if (employee.id.isEmpty ||
          employee.name.isEmpty ||
          employee.role.isEmpty) {
        throw FormatException('Employee ${employee.id} has incomplete data');
      }

      if (employee.contact.email.isEmpty || employee.contact.phone.isEmpty) {
        throw FormatException(
            'Employee ${employee.id} has incomplete contact information');
      }
    });

    if (department.budget != null) {
      if (department.budget!.total <= 0) {
        throw FormatException(
            'Department $departmentName has invalid budget total');
      }

      department.budget!.expenses.forEach((expense) {
        if (expense.item.isEmpty || expense.amount <= 0) {
          throw FormatException(
              'Department $departmentName has invalid expense item');
        }
      });
    }
  });
}