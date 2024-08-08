import 'employee.dart';
import 'budget.dart';
import 'check_null_function.dart';
class Department {
  final List<Employee> employees;
  final Budget? budget;

  Department({
    required this.employees,
    this.budget,
  });

  factory Department.fromJson(Map<String, dynamic> json) {
    return Department(
      employees: List.from(json["employees"]).map((element) {
          return Employee.fromJson(element);
        }).toList(),
      budget: checkNull(value: json["budget"], title: "budget")
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'employees': employees.map((e) {e.toJson();}).toList(),
      'budget': budget?.toJson(),
    };
  }
}
