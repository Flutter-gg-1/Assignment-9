class EmployeeProject {
  String? projectId;
  String? projectName;
  String? roleInProject;
  EmployeeProject({this.projectId, this.projectName, this.roleInProject});

  void toPrint() {
    print("id:$projectId");
    print("project name:$projectName");
    print("role:$roleInProject");
  }

  factory EmployeeProject.fromJson(Map<String, String> json) {
    return EmployeeProject(
        projectId: json['projectId'],
        projectName: json["projectName"],
        roleInProject: json['roleInProject']);
  }
}
