import 'package:assignment9/model.dart';
import 'display_all.dart';
import 'marketing_employee.dart';
import 'expenses_budget.dart';
import 'package:assignment9/company.dart';
import 'jsoncompany_project.dart';

void main() {
  Company companyObject = Company.fromJson(companyData);
  print('---------------------' * 8);
  print('printing all data');
  print('---------------------' * 8);
  Iterable<Map<String, dynamic>> marketingEmplyeeData =
      gitJsonMarkting(companyObject);
  Iterable<Map<String, dynamic>> markitingBudget =
      gitJsonMarktingBudget(companyObject);
  displayAllData(marketingEmplyeeData);
  print('--' * 20);
  print(markitingBudget);
  print(gitJsonCompanyProject(companyObject));

  print(
      '\n\n\n\n##########function to display the expenses of budget of each department#################');
  print(getJsonbudget(companyObject));
  print('\n\n\n');
}
