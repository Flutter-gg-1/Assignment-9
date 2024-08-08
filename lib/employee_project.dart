class ProjectsEmploy {
  final String? projectId;
  final String? projectName;
  final String? roleInProject;

  ProjectsEmploy({this.projectId, this.projectName, this.roleInProject});

  factory ProjectsEmploy.fromJson(Map<String, dynamic> json) {
    return ProjectsEmploy(
        projectId: json['projectId'],
        projectName: json['projectName'],
        roleInProject: json['roleInProject']);
  }
  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {};
    map["projectId"] = projectId;
    map["projectName"] = projectName;
    map["roleInProject"] = roleInProject;

    return map;
  }
}