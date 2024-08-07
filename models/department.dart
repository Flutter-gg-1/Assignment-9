import 'employee.dart';
import 'budget.dart';

class Department {
  Engineering engineering;
  Marketing marketing;

  Department({required this.engineering, required this.marketing});

  factory Department.fromJson(Map<String, dynamic> json) {
    return Department(
        engineering: Engineering.fromJson(json['engineering']),
        marketing: Marketing.fromJson(json['marketing']));
  }

  toJson() {
    return {
      'engineering': engineering.toJson(),
      'marketing': marketing.toJson()
    };
  }
}

class Engineering {
  List<Employee> employees;

  Engineering({required this.employees});

  factory Engineering.fromJson(Map<String, dynamic> json) {
    return Engineering(
        employees: (json['employees'] as List)
            .map((emp) => Employee.fromJson(emp))
            .toList());
  }

  toJson() {
    return {'employees': employees.map((emp) => emp.toJson()).toList()};
  }
}

class Marketing {
  List<Employee> employees;
  Budget budget;

  Marketing({required this.employees, required this.budget});

  factory Marketing.fromJson(Map<String, dynamic> json) {
    return Marketing(
        employees: (json['employees'] as List)
            .map((emp) => Employee.fromJson(emp))
            .toList(),
        budget: Budget.fromJson(json['budget']));
  }

  toJson() {
    return {
      'employees': employees.map((emp) => emp.toJson()).toList(),
      'budget': budget.toJson()
    };
  }
}
