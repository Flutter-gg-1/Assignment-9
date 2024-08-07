class Projects {
  final String projectId;
  final String projectName;
  final String roleInProject;


  Projects({required this.projectId, required this.projectName, required this.roleInProject});

  factory Projects.fromJson(Map<String, dynamic> jason) {
    return Projects( projectId:jason ['projectId'], projectName:jason ['projectName'], roleInProject: jason ['roleInProject']);
  }

 

  toJason() {
    Map<String, dynamic>;
    return {
      "projectId": projectId,
      "projectName": projectName,
      "roleInProject":roleInProject
    };
  }
}
