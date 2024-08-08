import 'department.dart';
import 'project_company.dart';

class Company {
  final DepartmentsCompany departments;
  final ProjectCompany projectCompany;

  Company({required this.departments, required this.projectCompany});

  factory Company.fromJson(Map<String, dynamic> json) {
    return Company(
        departments: DepartmentsCompany.fromJson(json['departments']),
        projectCompany: ProjectCompany.fromJson(json['projects']));
  }
  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {};
    map["departments"] = departments.toJson();
    map["projects"] = projectCompany.toJson();
    return map;
  }
}
