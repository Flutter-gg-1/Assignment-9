import 'department.dart';
import 'employee.dart';

class Engineering {
  final List<Employee> employee;

  Engineering({required this.employee});

  factory Engineering.fromJson(Map json) {
    return Engineering(
        employee:
            List.from(checkNull(value: json["employees"], title: "employees"))
                .map((e) {
      return Employee.fromJson(e);
    }).toList());
  }

  Map<String, dynamic> toJson() {
    return {
      "employees": employee.map((e) => e.toJson()).toList(),
    };
  }
}
