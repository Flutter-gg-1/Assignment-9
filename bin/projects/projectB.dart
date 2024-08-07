import '../projects/team.dart';

class ProjectB {
  final String id;
  final String name;
  final String deadline;
  final List<Team>? team;
  ProjectB(
      {required this.team,
      required this.id,
      required this.name,
      required this.deadline});

  factory ProjectB.fromJason(Map<String, dynamic> jason) {
    return ProjectB(
        name: jason['name'],
        id: jason['id'],
        deadline: jason['deadline'],
        team: jason['team'] != null
            ? (jason['team'] as List).map((e) => Team.fromJson(e)).toList()
            : null);
  }

  toJason() {
    Map<String, dynamic>;
    return {
      'id': id,
      'name': name,
      'deadline': deadline,
      'team': team?.map((team) => team.toJason()).toList()
    };
  }

  static fromJson(json) {}
}
