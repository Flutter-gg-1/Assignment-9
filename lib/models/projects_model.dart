class ProjectsModel {
  String projectId;
  String projectName;
  String roleInProject;

  ProjectsModel({
    required this.projectId,
    required this.projectName,
    required this.roleInProject,
  });

  factory ProjectsModel.fromJson(Map<String, dynamic> json) {
    return ProjectsModel(
        projectId: json["projectId"],
        projectName: json["projectName"],
        roleInProject: json["roleInProject"]);
  }

  Map<String, dynamic> toJson() {
    return {
      "projectId": projectId,
      "projectName": projectName,
      "roleInProject": roleInProject
    };
  }
}
