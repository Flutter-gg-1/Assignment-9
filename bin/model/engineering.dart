import 'employee.dart';
class Engineering{
  final List<Employee> employees;

  Engineering({required this.employees});

  factory Engineering.fromJson(Map<String, dynamic> json){
    return Engineering(employees: List.from(json["employees"]).map((e) {
      return Employee.fromJson(e);
    },).toList(),
  );}

  Map<String, dynamic> toJson(){
    return {
      "employees": employees
    };
  }
}