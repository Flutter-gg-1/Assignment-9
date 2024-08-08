import 'budget.dart';
import 'employee.dart';

class Marketing {
  List<Employees> employeeMarketing;
  final Budget budget;

  Marketing({required this.employeeMarketing, required this.budget});

  factory Marketing.fromJson(Map<String, dynamic> json) {
    List<Employees> getEmployeeMap = [];

    for (var val in json["employees"]) {
      getEmployeeMap.add(Employees.fromJson(val));
    }
    return Marketing(
        employeeMarketing: getEmployeeMap,
        budget: Budget.fromJson(json['budget']));
  }
  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {};
    map["employees"] = employeeMarketing;
    map["budget"] = budget;

    return map;
  }
}
