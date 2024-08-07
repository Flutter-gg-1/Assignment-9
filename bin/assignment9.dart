import 'package:assignment9/dataset.dart'; // dataset
import 'package:assignment9/models/budget.dart';
import 'package:assignment9/models/contact.dart';
import 'package:assignment9/models/employee.dart';
import 'package:assignment9/models/expense.dart';
import 'package:assignment9/models/project.dart'; // contact class

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
  Employee employee = Employee.fromJson(companyData['departments']['engineering']['employees'][0]);
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
}
