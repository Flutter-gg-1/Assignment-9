import 'check_null_function.dart';

class EmployeesProjectDetails{
  final String projectId;
  final String projectName;
  final String roleInProject;

  EmployeesProjectDetails({required this.projectId, required this.projectName, required this.roleInProject});

  factory EmployeesProjectDetails.fromJson(Map<String, dynamic> json){
    return EmployeesProjectDetails(projectId: checkNull(value: json["projectId"], title: "projectId"), projectName: checkNull(value: json["projectName"], title: "projectName"), roleInProject: checkNull(value: json["roleInProject"], title: "roleInProject"));
  }

  Map<String, dynamic> toJson(){
    return{
      "projectId": projectId,
              "projectName": projectName,
              "roleInProject": roleInProject
    };
  }
}