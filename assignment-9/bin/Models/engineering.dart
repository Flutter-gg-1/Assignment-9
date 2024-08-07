import 'employee.dart';

class Engineering {
  final List<Employee> employees;

  Engineering({required this.employees});

  factory Engineering.fromJson(Map<String, dynamic> json) {
    return Engineering(
        employees: List.from(json["employees"]).map((element) {
      return Employee.fromJson(element);
    }).toList());
  }

  Map<String, dynamic> toJson() {
    return {
      "employees": employees
    };
  }
}
