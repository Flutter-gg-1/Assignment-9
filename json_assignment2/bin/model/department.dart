import 'employee.dart';

class Engineering {
  List<Employee> emp;
  Engineering({required this.emp});

  factory Engineering.fromJson(Map<String, dynamic> json) {
    return Engineering(
        emp: json["departments"]["engineering"]["employees"]
            .map<Employee>((element) {
      return Employee.fromJson(element);
    }).toList());
  }
}

class Maketing {
  List<Employee> emp;
  Maketing({required this.emp});
  factory Maketing.fromJson(Map<String, dynamic> json) {
    return Maketing(
        emp: json["departments"]["marketing"]["employees"]
            .map<Employee>((element) {
      return Employee.fromJson(element);
    }).toList());
  }
}
