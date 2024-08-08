import 'package:assignment9/company.dart';

Map<String, dynamic> getJsonbudget(Company company) {
  Map<String, dynamic> expense = {
    'engineering': company.departments.marketing.budget.expenses
        .map((expense) => expense.toJson())
        .toList(),
    'marketing': company.departments.marketing.budget.expenses
        .map((expense) => expense.toJson())
        .toList()
  };

  return expense;
}
