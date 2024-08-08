import 'employee.dart';
class Marketing{
  final List<Employee> employees;

  Marketing({required this.employees});

  factory Marketing.fromJson(Map<String, dynamic> json){
    return Marketing(employees: List.from(json["employees"]).map((e) {
      return Employee.fromJson(e);
    },).toList(),
  );}

  Map<String, dynamic> toJson(){
    return {
      "employees": employees
    };
  }
  }