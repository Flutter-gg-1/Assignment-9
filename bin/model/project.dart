import 'teams.dart';
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
    return Project(
      id: json['id'],
      name: json['name'],
      deadline: json['deadline'],
      team: List<TeamMember>.from(
        json['team'].map((teamMember) => TeamMember.fromJson(teamMember)),
      ),
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

