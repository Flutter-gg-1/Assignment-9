import 'employee.dart';
import 'budget.dart';
import '../utils/handle.dart';

class Department {
  Engineering engineering;
  Marketing marketing;

  Department({required this.engineering, required this.marketing});

  factory Department.fromJson(Map<String, dynamic> json) {
    return Department(
      engineering: Engineering.fromJson(
          checkValue(value: json['engineering'], title: 'Engineering')),
      marketing: Marketing.fromJson(
          checkValue(value: json['marketing'], title: 'Marketing')),
    );
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
  Budget? budget;

  Engineering({required this.employees, required this.budget});

  factory Engineering.fromJson(Map<String, dynamic> json) {
    return Engineering(
        employees: checkValue(
            value: (json['employees'] as List)
                .map((emp) => Employee.fromJson(emp))
                .toList(),
            title: 'Engineering Employees'),
        budget:
            json['budget'] == null ? null : Budget.fromJson(json['budget']));
  }

  toJson() {
    return {
      'employees': employees.map((emp) => emp.toJson()).toList(),
      'budget': budget?.toJson()
    };
  }
}

class Marketing {
  List<Employee> employees;
  Budget budget;

  Marketing({required this.employees, required this.budget});

  factory Marketing.fromJson(Map<String, dynamic> json) {
    return Marketing(
        employees: checkValue(
            value: (json['employees'] as List)
                .map((emp) => Employee.fromJson(emp))
                .toList(),
            title: 'Marketing Employees'),
        budget: Budget.fromJson(
            checkValue(value: json['budget'], title: 'Marketing budget')));
  }

  toJson() {
    return {
      'employees': employees.map((emp) => emp.toJson()).toList(),
      'budget': budget.toJson()
    };
  }
}
