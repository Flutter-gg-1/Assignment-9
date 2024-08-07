import '../projects/team.dart';

class ProjectC {
  final String? id;
  final String? name;
  final String? deadline;
  final List<Team>? team;
  ProjectC({required this.team, required this.id, required this.name, required this.deadline});

  factory ProjectC.fromJason(Map<String, dynamic> jason) {
    return ProjectC(
        
        id: jason['id'],
        name: jason['name'],
        deadline: jason['deadline'],
        team: jason['team'] != null
            ? (jason['team'] as List).map((e) => Team.fromJson(e)).toList()
            : null);
  }

  toJason() {
    Map<String, dynamic>;
    return {
      'id':id,
      'name': name,
      'deadline':deadline,
      'team':team?.map((team) => team.toJason()).toList()

    };
  }

  static fromJson(json) {}
}
