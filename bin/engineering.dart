import 'employees.dart';

class Engineering {
  final List<dynamic> employees;

  Engineering({required this.employees});

  factory Engineering.fromJson(Map<String, dynamic> jason) {
    return Engineering(
      employees: jason['departments']['engineering']['employees'],
    );
  }
  toJason() {
    Map<String, dynamic>;
    return {
   "employees":employees
    };
  }

}
