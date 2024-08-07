import 'department.dart';
import 'project.dart';

class CompanyData {
  final Department department;
  final Project project;

  CompanyData({required this.department, required this.project});

  factory CompanyData.fromJson(Map<String, dynamic> json) {
    return CompanyData(
        department: Department.fromJson(json["departments"]),
        project: Project.formJson(json["projects"]));
  }

  Map<String, dynamic> toJson() {
    return {
      "departments": department.toJson(),
      "projects": project.toJson()
    };
  }

  getExpenses() {
    return {department.marketing.budget.getExpenses()};
  }

  
}
