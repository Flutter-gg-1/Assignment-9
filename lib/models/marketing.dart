import 'package:assignment9/models/budget.dart';
import 'package:assignment9/models/check_null.dart';
import 'package:assignment9/models/employee.dart';

class Marketing {
  final List<Employee> employees;
  final Budget budget;

  Marketing({required this.budget, required this.employees});

  factory Marketing.fromJson(Map<String, dynamic> json) {
    List<Employee> employeesList = [];
    for(var employee in json['employees']) {
      employeesList.add(Employee.fromJson(employee));
    }
    return Marketing(
        budget: Budget.fromJson(checkNull(json['budget'], 'budget')),
        employees: employeesList);
  }

  Map<String,dynamic> toJson() {
    return {
      'employees' : employees.map((e)=>e.toJson()).toList(),
      'budget' : budget.toJson()
    };
  }
}
