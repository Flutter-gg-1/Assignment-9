import 'employee.dart';

class Engineering {
  List<Employees> employee;
  Engineering({required this.employee});

  factory Engineering.fromJson(Map<String, dynamic> json) {
    List<Employees> getEmployeeMap = [];

    for (var val in json["employees"]) {
      getEmployeeMap.add(Employees.fromJson(val));
    }
    return Engineering(employee: getEmployeeMap);
  }

  Map<String, dynamic> toJson() {
    List<Map<String, dynamic>> displayEmployeeMap = [];

    for (var val in employee) {
      displayEmployeeMap.add(val.toJson());
    }

    return {"projects": displayEmployeeMap};
  }
}
