import 'check_null.dart';
import 'projects.dart';
import 'departments.dart';

class CompanyData {
  final Departments departments;
  final Map<String, Project> projects;

  CompanyData({
    required this.departments,
    required this.projects,
  });

  factory CompanyData.fromJson(Map<String, dynamic> json) {
    final departmentsData =
        checkNull(value: json['departments'], title: 'departments');
    final projectsData = checkNull(value: json['projects'], title: 'projects');

    return CompanyData(
      departments:
          Departments.fromJson(departmentsData as Map<String, dynamic>),
      projects: (projectsData as Map<String, dynamic>).map((key, value) =>
          MapEntry(key, Project.fromJson(value as Map<String, dynamic>))),
    );
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = {};
    data["departments"] = departments.toJson();
    data["projects"] =
        projects.map((key, value) => MapEntry(key, value.toJson())).values.toList();
    return data;
  }
}
  
