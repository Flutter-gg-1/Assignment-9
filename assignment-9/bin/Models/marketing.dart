import 'employee.dart';
import 'budget.dart';

class Marketing {
  final List<Employee> employees;
  final Budget budget;
  Marketing({required this.employees, required this.budget});

  factory Marketing.fromJson(Map<String, dynamic> json) {
    return Marketing(
        employees: List.from(json["employees"]).map((element) {
          return Employee.fromJson(element);
        }).toList(),
        budget: Budget.fromJson(json["budget"]));
  }

  Map<String, dynamic> toJson() {
    return {
      "employees": employees.map((element) {
        return element.toJson();
      }),
      "budget": budget.toJson()
    };
  }

  Map<String, dynamic> getEmployees() {
    return {
      "employees": employees.map((element) {
        return element.toJson();
      }),
    };
  }
}
