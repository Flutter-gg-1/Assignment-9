import 'budget/budget.dart';
import 'employee/employee.dart';

class Marketing {
  List<Employee>? employees;
  Budget? budget;

  Marketing({required this.employees, required this.budget});

  factory Marketing.fromJson(Map<String, dynamic> json) {
    return Marketing(
        employees: (json['employees'] as List<dynamic>)
            .map((e) => Employee.fromJson(e))
            .toList(),
        budget: Budget.fromJson(json['budget']));
  }

  Map<String, dynamic> toJson() {
    return {
      'employees': employees?.map((e) => e.toJson()).toList(),
      'budget': budget?.toJson()
    };
  }
}
