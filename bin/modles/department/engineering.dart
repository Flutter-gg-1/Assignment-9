import 'employees.dart';
class Engineering {
  final List<Employees>? employees;

  Engineering({required this.employees});

  factory Engineering.fromJson(Map<String, dynamic> json) {
    return Engineering(
      employees: json['employees'] != null
          ? (json['employees'] as List)
              .map((e) => Employees.fromJson(e))
              .toList():null);
  }

  toJson() {
    Map<String, dynamic>;
    return {
      'employees': employees,
    };
  }
}
