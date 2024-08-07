import 'department.dart';
import 'Project.dart';

class CompanyData {
  final Department department;
  // final Project project;

  CompanyData({required this.department});

  factory CompanyData.fromJson(Map<String, dynamic> json) {
    return CompanyData(department: Department.fromJson(json["departments"]));
  }

  Map<String, dynamic> toJson() {
    return {
      "departments":department.toJson()
    };
  }
}
