import 'teamMember.dart ';

class ProjectC {
  final String id;
  final String name;
  final String deadline;
  final List<TeamMember> team;
  ProjectC(
      {required this.id,
      required this.name,
      required this.deadline,
      required this.team});

  factory ProjectC.fromJson(Map<String, dynamic> json) {
    return ProjectC(
        id: json["id"],
        name: json["name"],
        deadline: json["deadline"],
        team: List.from(json["team"]).map((element) {
          return TeamMember.fromJson(element);
        }).toList());
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": name,
      "deadline": deadline,
      "team": team.map((element) {
        return element.toJson();
      }),
    };
  }
}
