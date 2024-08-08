import 'employees.dart';
import 'budget.dart';

class Marketing {
  final List<Employees>? employees;
  final Budget? budget;

  Marketing({required this.employees,required this.budget});

  factory Marketing.fromJson(Map<String, dynamic> json) {
    return Marketing(
      employees: 
           (json['employees'] as List)
              .map((e) => Employees.fromJson(e))
              .toList(),
         
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
