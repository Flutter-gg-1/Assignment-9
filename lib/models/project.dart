import 'package:assignment9/models/check_null.dart'; // function to check null values

// class to represent an employee project
class Project {
  final String projectId;
  final String projectName;
  final String roleInProject;

  Project(
      {required this.projectId,
      required this.projectName,
      required this.roleInProject});

  factory Project.fromJson(Map<String, String> json) {
    return Project(
        projectId: checkNull(json['projectId'], 'projectId'),
        projectName: checkNull(json['projectName'], 'projectName'),
        roleInProject: checkNull(json['roleInProject'], 'roleInProject'));
  }

  Map<String, String> toJson() {
    return {
      'projectId': projectId,
      'projectName': projectName,
      'roleInProject': roleInProject
    };
  }
}