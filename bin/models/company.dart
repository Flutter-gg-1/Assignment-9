import 'project_employee.dart';
import 'department.dart';
class Company {
  final List<Department> departments;
  final Projects projects;

  Company({required this.departments, required this.projects});

  factory Company.fromJson(Map<String, dynamic> json) {
    return Company(
      departments: (json['departments'] as Map<String, dynamic>)
          .values
          .map((departmentJson) => Department.fromJson(departmentJson))
          .toList(),
      projects: Projects.fromJson(json['projects']),
    );
  }
   Map<String, dynamic> toJson() {
    return {
      'departments':
          departments.map((department) => department.toJson()).toList(),
      'projects': projects.toJson(),
    };
  }
  
}
