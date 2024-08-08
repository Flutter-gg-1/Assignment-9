
class EmployeesProject {
  final String? projectId;
  final String? projectName;
  final String? roleInProject;

  EmployeesProject(
      {required this.projectId,
      required this.projectName,
      required this.roleInProject});

  factory EmployeesProject.fromJson(Map<String, dynamic> json) {
    return EmployeesProject(
        projectId: json["projectId"],
        projectName: json["projectName"],
        roleInProject: json["roleInProject"],
        );
  }

  Map<String, dynamic> toJson() {
    return {
      "projectId": projectId,
      "projectName": projectName,
      "roleInProject": roleInProject,
    };
  }
}
