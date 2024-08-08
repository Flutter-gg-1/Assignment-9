import 'package:assignment9/company.dart';

Map<String, dynamic> getJsonbudget(Company company) {
  Map<String, dynamic> expense = {
    'total': company.departments.marketing.budget.total,
    'marketing': company.departments.marketing.budget.expenses
        .map((expense) => expense.toJson())
        .toList(),
    'engineering': company.departments.engineering.employee
        .map((expense) => expense.toJson())
        .toList()
  };

  return expense;
}
