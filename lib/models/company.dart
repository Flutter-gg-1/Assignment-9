import 'package:assignment9/models/company_projects.dart'; // company projects class
import 'package:assignment9/models/department.dart';       // department class

// class to represent a company
class Company {
  final Department departments;
  final CompanyProjects projects;

  Company({required this.departments, required this.projects});

  factory Company.fromJson(Map<String, dynamic> json) {
    return Company(
        departments: Department.fromJson(json['departments']),
        projects: CompanyProjects.fromJson(json['projects']));
  }

  Map<String,dynamic> toJson() {
    return {
      'departments' : departments.toJson(),
      'projects' : projects.toJson()
    };
  }
}