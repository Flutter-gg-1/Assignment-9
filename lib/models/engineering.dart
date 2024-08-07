import 'package:assignment9/models/budget.dart';
import 'package:assignment9/models/check_null.dart';
import 'package:assignment9/models/employee.dart';

class Engineering {
  final List<Employee> employees;
  late Budget? budget;

  Engineering({required this.employees, this.budget});

  factory Engineering.fromJson(Map<String,dynamic> json) {
    List<Employee> employeeList = [];
    for(var employee in checkNull(json['employees'],'employees')) {
      employeeList.add(Employee.fromJson(employee));
    }
    Engineering engineering = Engineering(employees: employeeList);
    if(json['budget']!=null) {
      engineering.budget = json['budget'];
    }
    return engineering;
  }

  Map<String,dynamic> toJson() {
    Map<String,dynamic> map = {};
    map['employees'] = employees.map((e)=>e.toJson()).toList();
    if(budget != null) {
      map['budget'] = budget!.toJson();
    }
    return map;
  }
}