import 'package:assignment9/models/budget.dart';    // budget class
import 'package:assignment9/models/employee.dart';  // employee class

// class to represent marketing department in a company
class Marketing {
  final List<Employee> employees;
  late Budget? budget;

  Marketing({this.budget, required this.employees});

  factory Marketing.fromJson(Map<String, dynamic> json) {
    List<Employee> employeesList = [];
    for (var employee in json['employees']) {
      employeesList.add(Employee.fromJson(employee));
    }
    Marketing marketing = Marketing(employees: employeesList);
    if (json['budget'] != null) {
      marketing.budget = Budget.fromJson(json['budget']);
    }
    return marketing;
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {};
    map['employees'] = employees.map((e) => e.toJson()).toList();
    if (budget != null) {
      map['budget'] = budget?.toJson();
    }
    return map;
  }
}
