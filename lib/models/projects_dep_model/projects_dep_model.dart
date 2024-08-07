



import 'package:asg9/models/projects_dep_model/project_a.dart';
import 'package:asg9/models/projects_dep_model/project_b.dart';
import 'package:asg9/models/projects_dep_model/project_c.dart';
import 'package:asg9/models/projects_dep_model/project_d.dart';

class ProjectsDepModel{



  ProjectA projectA;
  ProjectB projectB;
  ProjectC projectC;
  ProjectD projectD;



  ProjectsDepModel({
    required this.projectA,
    required this.projectB,
    required this.projectC,
    required this.projectD,
  });





  factory ProjectsDepModel.fromJson(Map<String, dynamic> json) {



    return ProjectsDepModel(projectA: ProjectA.fromJson(json["projectA"]), projectB: ProjectB.fromJson(json["projectB"]), projectC: ProjectC.fromJson(json["projectC"]), projectD: ProjectD.fromJson(json["projectD"]));

  }



  Map<String, dynamic> toJson() {


    



    return{

      "projectA" : projectA.toJson(),
      "projectB" : projectB.toJson(),
      "projectC" : projectC.toJson(),
      "projectD" : projectD.toJson(),

    };




  }


}