import 'department.dart';
import 'project.dart';
import '../utils/handle.dart';

class Company {
  Department departments;
  ProjectMngmt projects;

  Company({required this.departments, required this.projects});

  factory Company.fromJson(Map<String, dynamic> json) {
    return Company(
        departments: Department.fromJson(
            checkValue(value: json['departments'], title: 'Department')),
        projects: ProjectMngmt.fromJson(checkValue(
            value: json['projects'],
            title: 'Projects from class ProjectMngmt')));
  }

  toJson() {
    return {'departments': departments.toJson(), 'projects': projects.toJson()};
  }
}
