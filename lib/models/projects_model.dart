import 'package:asg9/helper/check_null.dart';

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
        projectId: checkNull(data: json["projectId"], title: "projectId") ,
        projectName: checkNull(data: json["projectName"], title: "projectName") ,
        roleInProject: checkNull(data: json["roleInProject"], title: "roleInProject"));
  }

  Map<String, dynamic> toJson() {
    return {
      "projectId": projectId,
      "projectName": projectName,
      "roleInProject": roleInProject
    };
  }
}
