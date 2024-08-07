import 'package:assignment9/models/check_null.dart';
import 'package:assignment9/models/employee.dart';

class Engineering {
  final List<Employee> employees;

  Engineering({required this.employees});

  factory Engineering.fromJson(Map<String,dynamic> json) {
    List<Employee> employeeList = [];
    for(var employee in checkNull(json['employees'],'employees')) {
      employeeList.add(Employee.fromJson(employee));
    }
    return Engineering(employees: employeeList);
  }

  Map<String,dynamic> toJson() {
    return {
      'employees' : employees.map((e)=>e.toJson()).toList()
    };
  }
}