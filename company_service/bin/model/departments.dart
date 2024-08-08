import 'employees.dart';
import 'projects.dart';

class Departments {
  List<Employees> employees;
  Map<String, dynamic>? budget;
  List<Project> projects;
  Departments({required this.employees, this.budget, required this.projects});

  factory Departments.fromJson(Map<String, dynamic> json) {
    return Departments(
        employees: (json['employees'] as List)
            .map((employees) => Employees.fromJson(employees))
            .toList(),
        budget: json['budget'],
         projects: (json['projects'] as List)
            .map((projects) => Project.fromJson(projects))
            .toList(),
        );
  }
  Map<String, dynamic> toJson() {
    return {
      'employees':employees .map((employees) => employees.toJson().toString()),
      'budget':budget ,
       'projects':projects .map((projects) => projects.toJson().toString()) ,

    };
  }
}
