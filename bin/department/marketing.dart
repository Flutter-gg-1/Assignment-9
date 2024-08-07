import 'employees.dart';
import 'budget.dart';

class Marketing {
  final List<Employees>? employees;
  final Budget? budget;

  Marketing({this.employees, this.budget});

  factory Marketing.fromJson(Map<String, dynamic> json) {
    return Marketing(
      employees: json['employees'] != null
          ? (json['employees'] as List)
              .map((e) => Employees.fromJson(e))
              .toList()
          : null,
      budget: json['budget'] != null
          ? Budget.fromJson(json['budget'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'employees': employees?.map((e) => e.toJson()).toList(),
      'budget': budget?.toJson(),
    };
  }
}
