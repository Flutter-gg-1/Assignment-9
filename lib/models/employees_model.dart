import 'package:asg9/helper/check_null.dart';
import 'package:asg9/models/contact_model.dart';
import 'package:asg9/models/projects_model.dart';

class EmployeesModel {
  String id;
  String name;
  String role;

  ContactModel contactModel;

  List<ProjectsModel?> projectsModel;

  EmployeesModel({
    required this.id,
    required this.contactModel,
    required this.name,
    required this.projectsModel,
    required this.role,
  });

  factory EmployeesModel.fromJson(Map<String, dynamic> json) {
    List<ProjectsModel?> projectsModelLis = [];

    if(json["projects"] != null){
    for (var val in json["projects"]) {
      projectsModelLis.add(ProjectsModel.fromJson(val));
    }
    }

    return EmployeesModel(
        id: checkNull(data: json["id"] , title : "id") ,
        contactModel: ContactModel.fromJson(json["contact"]),
        name: checkNull(data: json["name"] , title: "name") ,
        projectsModel: projectsModelLis,
        role: checkNull(data:  json["role"] , title:  "role") );
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> tempMap = {};
    List<Map<String, dynamic>> lisTemp = [];

    if (projectsModel.isNotEmpty) {
      for (var val in projectsModel) {
        lisTemp.add(val!.toJson());
      }
    }

    tempMap["id"] = id;
    tempMap["name"] = name;
    tempMap["role"] = role;
    tempMap["contact"] = contactModel.toJson();
    tempMap["projects"] = lisTemp;

    return tempMap;
  }
}
