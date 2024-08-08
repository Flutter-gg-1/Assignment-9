import 'employee.dart';
import 'budget.dart';
class Marketing {
  final List<Employee> employees;
  final Budget? budget;

  Marketing({required this.budget, required this.employees});

  factory Marketing.fromJson(Map<String, dynamic> json) {
    return Marketing(
      budget: json["budget"] != null ? Budget.fromJson(json["budget"]) : null,
      employees: (json["employees"] as List)
          .map((employee) => Employee.fromJson(employee))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "employees": employees.map((element) => element.toJson()).toList(),
      "budget": budget?.toJson(), // Handle null budget
    };
  }
}