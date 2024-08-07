import 'package:assignment9/models/company_projects.dart';
import 'package:assignment9/models/department.dart';

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
