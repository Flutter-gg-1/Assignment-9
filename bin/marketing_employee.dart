import 'package:assignment9/company.dart';

Iterable<Map<String, dynamic>> gitJsonMarkting(Company company) {
  var marketingEmployee = company.departments.marketing.employeeMarketing
      .map((display) => display.toJson());

  return marketingEmployee;
}

Iterable<Map<String, dynamic>> gitJsonMarktingBudget(Company company) {
  
  var marketingEmployee = company.departments.marketing.budget.expenses
      .map((display) => display.toJson());
  return marketingEmployee;
}
