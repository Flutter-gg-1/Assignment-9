import 'package:assignment9/model.dart';
import 'display_all.dart';
import 'marketing_employee.dart';
import 'expenses_budget.dart';
import 'package:assignment9/company.dart';

void main() {
  Company companyObject = Company.fromJson(companyData);

  Iterable<Map<String, dynamic>> companyalljson = gitJson(companyObject);
  displayAllData(companyalljson);

  Map<String, dynamic> companyalljson2 = getJsonbudget(companyObject);
}
