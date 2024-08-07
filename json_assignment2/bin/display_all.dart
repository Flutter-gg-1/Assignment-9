import 'model/employee.dart';
import 'model/budget.dart';

// show all employees in Engineering deparment
displayAllEngEmployee(List<Employee> emp) {
  print("Employee Engineers");
  print("---------------------------------------");

  for (var element in emp) {
    print("ID:${element.name}");
    print("Name:${element.name}");
    print("Role:${element.name}");
    print("Email:${element.contact.email}");
    print("Phone:${element.contact.phone}");
    print("---------------------------------------");
  }
}
// show all employees in Marketing deparment

displayAllMRKEmployee(List<Employee> emp) {
  print("Employee Maekters");
  print("---------------------------------------");

  for (var element in emp) {
    print("ID:${element.name}");
    print("Name:${element.name}");
    print("Role:${element.name}");
    print("Email:${element.contact.email}");
    print("Phone:${element.contact.phone}");
    print("---------------------------------------");
  }
}
// show the total of budget and expenses

displayBudget(List<Expenses> expenses, int total) {
  print("The Budget");

  print("---------------------------------------");

  for (var element in expenses) {
    print("Item:${element.item}");
    print("Amount:${element.amount}");
    print("---------------------------------------");
  }
  print("Total Budget :$total");
}
