import 'team.dart';

class ProjectCompany {
  final Project projectA;
  final Project projectB;
  final Project projectC;
  final Project projectD;
  ProjectCompany(
      {required this.projectA,
      required this.projectB,
      required this.projectC,
      required this.projectD});

  factory ProjectCompany.fromJson(Map<String, dynamic> json) {
    return ProjectCompany(
        projectA: Project.fromJson(json['projectA']),
        projectB: Project.fromJson(json['projectB']),
        projectC: Project.fromJson(json['projectC']),
        projectD: Project.fromJson(json['projectD']));
  }
  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {};
    map["projectA"] = projectA.toJson();
    map["projectB"] = projectB.toJson();
    map["projectC"] = projectC.toJson();
    map["projectD"] = projectD.toJson();
    return map;
  }
}


class Project {
  final String id;
  final String name;
  final String deadLine;
  final List<Team> team;
  Project(
      {required this.deadLine,
      required this.id,
      required this.name,
      required this.team});

  factory Project.fromJson(Map<String, dynamic> json) {
    return Project(
        deadLine: json['deadline'],
        id: json['id'],
        name: json['name'],
        team: List.from(json["team"]).map((element) {
          return Team.fromJson(element);
        }).toList());
  }
  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {};
    map["deadline"] = deadLine;
    map["id"] = id;
    map["name"] = name;
    map["team"] = team.map((t) => t.toJson()).toList();
    return map;
  }
}
