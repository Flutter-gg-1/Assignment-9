import 'team_member.dart ';

class ProjectA {
  final String id;
  final String name;
  final String deadline;
  final List<TeamMember> team;
  ProjectA(
      {required this.id,
      required this.name,
      required this.deadline,
      required this.team});

  factory ProjectA.fromJson(Map<String, dynamic> json) {
    return ProjectA(
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
