class EmployeeProject{
  final String projectId;
  final String projectName;
  final String roleInProject;

  EmployeeProject({required this.projectId, required this.projectName, required this.roleInProject});

  factory EmployeeProject.fromJson(Map<String, dynamic> json) {
    return EmployeeProject(
      projectId: json['projectId'],
      projectName: json['projectName'],
      roleInProject: json['roleInProject'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'projectId': projectId,
      'projectName': projectName,
      'roleInProject': roleInProject,
    };
  }
}
