


import 'package:asg9/models/projects_dep_model/team_model.dart';

class ProjectC{
  



  String id;
  String name;

  String deadline;

  List<TeamModel> teamModelLis = [];




  ProjectC({
    required this.deadline,
    required this.id,
    required this.name,
    required this.teamModelLis,

  });



  Map<String, dynamic> toJson() {


List<Map<String , dynamic>> temoMap = [];


for(var val in teamModelLis ){


  temoMap.add(val.toJson());
}
    return{

      "id": id,
      "name": name,
      "deadline": deadline,
      "team" : temoMap


    };
  }



  factory ProjectC.fromJson(Map<String, dynamic> json) {


    List<TeamModel> tempList = [];


    for(var val in json["team"] ){
      tempList.add(TeamModel.fromJson(val));
    }


    return ProjectC(deadline: json["deadline"], id: json["id"], name: json["name"], teamModelLis:tempList );

  }

}