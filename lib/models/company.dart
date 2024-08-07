import 'package:asg9/models/departments_model.dart';
import 'package:asg9/models/projects_dep_model/projects_dep_model.dart';
import 'package:asg9/models/projects_model.dart';

class CompanyModel {
  DepartmentsModel departmentsModel;

  ProjectsDepModel projectsDepModel;

  CompanyModel(
      {required this.departmentsModel, required this.projectsDepModel});

  factory CompanyModel.fromJson(Map<String, dynamic> json) {
    


    return CompanyModel(departmentsModel: DepartmentsModel.fromJson(json["departments"]), projectsDepModel: ProjectsDepModel.fromJson(json["projects"]));

  }
  Map<String, dynamic> toJson() {
    return {"departments": departmentsModel.toJson(),

    "projects" : projectsDepModel.toJson()


    
    
    };
  }
}
