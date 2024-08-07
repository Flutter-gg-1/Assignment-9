class Project {
  String? projectId;
  String? projectName;
  String? roleInProject;

  Project({this.projectId, this.projectName, this.roleInProject});
  factory Project.formJson(Map<String, dynamic> json) {
    return Project(
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
