import 'package:assignment9/dataset.dart'; // dataset
import 'package:assignment9/models/budget.dart';
import 'package:assignment9/models/check_null.dart';
import 'package:assignment9/models/company.dart';
import 'package:assignment9/models/company_projects.dart';
import 'package:assignment9/models/contact.dart';
import 'package:assignment9/models/department.dart';
import 'package:assignment9/models/employee.dart';
import 'package:assignment9/models/engineering.dart';
import 'package:assignment9/models/expense.dart';
import 'package:assignment9/models/expenses_by_department.dart';
import 'package:assignment9/models/get_marketing_employees.dart';
import 'package:assignment9/models/marketing.dart';
import 'package:assignment9/models/project.dart';
import 'package:assignment9/models/project_a.dart';
import 'package:assignment9/models/project_b.dart';
import 'package:assignment9/models/team.dart'; // contact class

void main(List<String> arguments) {
  print('Assignemnt 9 : Company data');
  print('-' * 40);
  print('Dataset has ${companyData.length} keys');
  print('Which are : ${companyData.keys}');
  print('-' * 40);

  print("Testing contact object");
  Contact contact = Contact.fromJson(
      companyData['departments']['engineering']['employees'][0]['contact']);
  print(contact.toJson());
  print('-' * 40);

  print("Testing project object");
  Project project = Project.fromJson(
      companyData['departments']['engineering']['employees'][1]['projects'][0]);
  print(project.toJson());
  print('-' * 40);

  print("Testing employee object");
  Employee employee = Employee.fromJson(companyData['departments']['engineering']['employees'][1]);
  print(employee.toJson());
  print('-' * 40);

  print("Testing expense object");
  Expense expense = Expense.fromJson(companyData['departments']['marketing']['budget']['expenses'][0]);
  print(expense.toJson());
  print('-' * 40);

  print("Testing budget object");
  Budget budget = Budget.fromJson(companyData['departments']['marketing']['budget']);
  print(budget.toJson());
  print('-' * 40);

  print("Testing engineering object");
  Engineering engineering = Engineering.fromJson(companyData['departments']['engineering']);
  print(engineering.toJson());
  print('-' * 40);

  print('Testing Marketing object');
  Marketing marketing = Marketing.fromJson(companyData['departments']['marketing']);
  print(marketing.toJson());
  print('-'*40);

  print('Testing department object');
  Department department = Department.fromJson(companyData['departments']);
  print(department.toJson());
  print('-'*40);

  print('Testing team object');
  Team team = Team.fromJson(companyData['projects']['projectA']['team'][0]);
  print(team.toJson());
  print('-'*40);

  print('Testing ProjectA & ProjectB object');
  ProjectA a = ProjectA.fromJson(companyData['projects']['projectA']);
  print(a.toJson());
  print('#'*20);
  ProjectB b = ProjectB.fromJson(companyData['projects']['projectB']);
  print(b.toJson());
  print('#'*20);
  print('-'*40);
  
  print('Testing CompanyProjects class');
  CompanyProjects companyProjects = CompanyProjects.fromJson(companyData['projects']);
  print(companyProjects.toJson());
  print('-'*40);

  print("Testing Company object");
  Company company = Company.fromJson(companyData);
  print(company.toJson());
  print('-'*40);

  print(">>>>>>>>>>>>> Q U E S T I O N S <<<<<<<<<<<<<");
  print('Question 3 : ');
  print(getMarketingEmployees());
  print('^'*50);

  print('Question 4 : ');
  print(expensesByDepartment());
  print('^'*50);

  // print('Question 5 : ');
  // print(checkNull(companyData['departments'], 'departments'));
  // print('^'*50);
}
