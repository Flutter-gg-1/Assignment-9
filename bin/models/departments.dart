import 'check_null.dart';
import 'employee.dart';
class Departments {
  final Marketing marketing;
  final Engineering engineering;

  Departments({
    required this.marketing,
    required this.engineering,
  });

  factory Departments.fromJson(Map<String, dynamic> json) {
    final marketingData =
        checkNull(value: json['marketing'], title: 'marketing');
    final engineeringData =
        checkNull(value: json['engineering'], title: 'engineering');

    return Departments(
      marketing: Marketing.fromJson(marketingData as Map<String, dynamic>),
      engineering:
          Engineering.fromJson(engineeringData as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = {};
    data["marketing"] = marketing.toJson();
    data["engineering"] = engineering.toJson();
    return data;
  }
}

class Marketing {
  final List<Employees> employees;
  final Budget budget;
  Marketing({
    required this.employees,
    required this.budget,
  });
  factory Marketing.fromJson(Map<String, dynamic> json) {
    return Marketing(
      employees: (checkNull(value: json["employees"], title: "employees")
              as List<dynamic>)
          .map((employee) =>
              Employees.fromJson(employee as Map<String, dynamic>))
          .toList(),
      budget: Budget.fromJson(checkNull(value: json["budget"], title: "budget")
          as Map<String, dynamic>),
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'employees': employees.map((e) => e.toJson()).toList(),
      'budget': budget.toJson(),
    };
  }
}

class Engineering {
  final List<Employees> employees;
  final Budget budget;

  Engineering({
    required this.employees,
    required this.budget,
  });

  factory Engineering.fromJson(Map<String, dynamic> json) {
    // Check for null values
    checkNull(value: json['employees'].toString(), title: 'employees');
    checkNull(value: json['budget'].toString(), title: 'budget');

    return Engineering(
      employees: (json['employees'] as List<dynamic>)
          .map((employee) => Employees.fromJson(employee))
          .toList(),
      budget: Budget.fromJson(json['budget']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'employees': employees.map((employee) => employee.toJson()).toList(),
      'budget': budget.toJson(),
    };
  }
}

