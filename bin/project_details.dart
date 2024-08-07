import 'team.dart';
class ProjectDetails{
  final String id;
  final String name;
  final String deadline;
  final List<Team> team;

  ProjectDetails({required this.deadline, required this.id, required this.name, required this.team});

  factory ProjectDetails.fromJson(Map<String, dynamic> json){
    return ProjectDetails(deadline: json["deadline"], id: json["id"], name: json["name"], team: List.from(json["team"] as List));
  }

  Map<String, dynamic> toJson(){
    return{
      "id": id,
      "name": name,
      "deadline":deadline ,
      "team": team
    };
    
  }
}