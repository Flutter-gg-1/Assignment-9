import 'budget/budget.dart';
import 'employee/employee.dart';

class Engineering {
  List<Employee> employees;
  Budget? budget;

  Engineering({required this.employees, this.budget});

  factory Engineering.fromJson(Map<String, dynamic> json) {
    return Engineering(
        employees: (json['employees'] as List<dynamic>)
            .map((e) => Employee.fromJson(e))
            .toList(),
        budget: json['budget']);
  }

  Map<String, dynamic> toJson() {
    return {
      'employees': employees.map((e) => e.toJson()).toList(),
      'budget': budget?.toJson()
    };
  }
}
