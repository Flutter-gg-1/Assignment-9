import 'budget.dart';
import 'employees.dart';
class Department{
  final List<Employee> employees;
  final Budget? budget; // Budget is optional

  Department({
    required this.employees,
    this.budget,
  });

  factory Department.fromJson(Map<String, dynamic> json) {
    return Department(
      employees: List<Employee>.from(
        json['employees'].map((employee) => Employee.fromJson(employee)),
      ),
      budget: json['budget'] != null ? Budget.fromJson(json['budget']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'employees': employees.map((employee) => employee.toJson()).toList(),
      'budget': budget?.toJson(), // Handle null
    };
  
  }
}

