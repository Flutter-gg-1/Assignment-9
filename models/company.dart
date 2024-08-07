import 'department.dart';
import 'project.dart';

class Company {
  Department departments;
  ProjectMngmt projects;

  Company({required this.departments, required this.projects});

  factory Company.fromJson(Map<String, dynamic> json) {
    return Company(
        departments: Department.fromJson(json['departments']),
        projects: ProjectMngmt.fromJson(json['projects']));
  }

  toJson() {
    return {'departments': departments.toJson(), 'projects': projects.toJson()};
  }
}
