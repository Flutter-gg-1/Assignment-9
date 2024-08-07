import 'budget.dart';

class Marketing {
  final List<dynamic>? employees;
  final Budget? budget;

  Marketing({required this.employees, required this.budget});

  factory Marketing.fromJson(Map<String, dynamic> json) {
    return Marketing(
      employees: json['employees'] ?? [],
      budget: json['budget'] != null ? Budget.fromJson(json['budget']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'employees': employees,
      'budget': budget?.toJson(),
    };
  }
}
