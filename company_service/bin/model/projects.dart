import 'team.dart';

class Project{

final String id;
  final String name;
  final String deadline;
  final List<TeamMember> team;

  Project({
    required this.id,
    required this.name,
    required this.deadline,
    required this.team,
  });

  factory Project.fromJson(Map<String, dynamic> json) {
    var teamList = (json['team'] as List)
        .map((i) => TeamMember.fromJson(i))
        .toList();

    return Project(
      id: json['id'],
      name: json['name'],
      deadline: json['deadline'],
      team: teamList,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'deadline': deadline,
      'team': team.map((member) => member.toJson()).toList(),
    };
  }
}




