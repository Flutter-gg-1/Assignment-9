import 'package:assignment9/models/check_null.dart';
import 'package:assignment9/models/team.dart';

class ProjectD {
  final String id;
  final String name;
  final String deadline;
  final List<Team> teams;

  ProjectD(
      {required this.deadline,
      required this.id,
      required this.name,
      required this.teams});

  factory ProjectD.fromJson(Map<String, dynamic> json) {
    List<Team> teamsList = [];
    for(var team in checkNull(json['team'], 'team')) {
      teamsList.add(Team.fromJson(team));
    }
    return ProjectD(
        deadline: json['deadline'],
        id: json['id'],
        name: json['name'],
        teams: teamsList);
  }

  Map<String,dynamic> toJson() {
    return {
      'id' : id,
      'name' : name,
      'deadline' : deadline,
      'team' : teams.map((e)=>e.toJson()).toList()
    };
  }
}