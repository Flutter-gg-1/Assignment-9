import 'employee.dart';
class Engineering {
  final List<Employee>? employees;

  Engineering({ this.employees});

  factory Engineering.fromJson(Map<String, dynamic> json) {
    return Engineering(
      employees: json["employees"]
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "employees": employees?.map((element) => element.toJson()).toList(),
    };
  }
}
