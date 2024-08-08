import '../json/data.dart';
import '../model/employee.dart';
import '../model/budget.dart';
import '../model/marketing.dart';
import 'dart:io';

void main(List<String> arguments) {
  List engneering = [];
  List<Employee> marketingEmployee = [];

  for (var element in companyData['departments']['engineering']['employees']) {
    engneering.add(Employee.fromJson(element));
  }

  for (var element in companyData['departments']['marketing']['employees']) {
    marketingEmployee.add(Employee.fromJson(element));
  }
  Budget budget =
      Budget.fromJson(companyData['departments']['marketing']["budget"]);

  Marketing marketing = Marketing(employees: marketingEmployee, budget: budget);
  print("\n" * 5);

  late String userInput;
  do {
    print("0-exit 1- print all engeering 2- print all markting employee");
    userInput = stdin.readLineSync()!;

    switch (userInput) {
      case == "1":
        for (Employee element in engneering) {
          element.toPrint();
        }
        break;

      case == "2":
          marketing.toPrint();

        break;
    }
  } while (userInput != "0");
}
