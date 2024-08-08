import 'budget.dart';
import 'employee.dart';

class Department {
  List<Employee> employees; // List of employees in the department
  Budget? budget; // Optional budget for the department

  // Constructor for the Department class
  Department({required this.employees, this.budget});

  // Factory constructor to create a Department instance from a JSON map
  factory Department.fromJson(Map<String, dynamic> json) {
    return Department(
      // Creating a list of Employee instances from JSON
      employees: (json['employees'] as List).map((i) => Employee.fromJson(i)).toList(),
      // Creating a Budget instance from JSON if budget exists
      budget: json['budget'] != null ? Budget.fromJson(json['budget']) : null,
    );
  }

  // Method to convert a Department instance to a JSON map
  Map<String, dynamic> toJson() {
    return {
      'employees': employees.map((e) => e.toJson()).toList(),
      'budget': budget?.toJson(),
    };
  }
}