import 'department.dart';
import 'employee.dart';

class Marketing {
  final List<Employee> employee;

  Marketing({required this.employee});

  factory Marketing.fromJson(Map json) {
    return Marketing(
        employee:
            List.from(checkNull(value: json["employees"], title: "employees"))
                .map((e) {
      return Employee.fromJson(e);
    }).toList());
  }

  Map<String, dynamic> toJson() {
    return {
      "employee": employee.map((e) => e.toJson()).toList(),
    };
  }
}
