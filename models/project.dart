import '../utils/handle.dart';

class ProjectMngmt {
  Project projectA;
  Project projectB;
  Project projectC;
  Project projectD;

  ProjectMngmt({
    required this.projectA,
    required this.projectB,
    required this.projectC,
    required this.projectD,
  });

  factory ProjectMngmt.fromJson(Map<String, dynamic> json) {
    return ProjectMngmt(
        projectA: Project.fromJson(json['projectA']),
        projectB: Project.fromJson(json['projectB']),
        projectC: Project.fromJson(json['projectC']),
        projectD: Project.fromJson(json['projectD']));
  }

  toJson() {
    return {
      'projectA': projectA.toJson(),
      'projectB': projectB.toJson(),
      'projectC': projectC.toJson(),
      'projectD': projectD.toJson()
    };
  }
}

class Project {
  String id;
  String name;
  String deadline;
  List<Team> team;

  Project({
    required this.id,
    required this.name,
    required this.deadline,
    required this.team,
  });

  factory Project.fromJson(Map<String, dynamic> json) {
    return Project(
        id: checkValue(value: json['id'], title: 'Project ID'),
        name: checkValue(value: json['name'], title: 'Project Name'),
        deadline:
            checkValue(value: json['deadline'], title: 'Project Deadline'),
        team: checkValue(
            value: (json['team'] as List)
                .map((teamMap) => Team.fromJson(teamMap))
                .toList(),
            title: 'Project Team'));
  }

  toJson() {
    return {
      'id': id,
      'name': name,
      'deadline': deadline,
      'team': team.map((t) => t.toJson()).toList()
    };
  }
}

class Team {
  String employeeId;
  String role;

  Team({
    required this.employeeId,
    required this.role,
  });

  factory Team.fromJson(Map<String, dynamic> json) {
    return Team(employeeId: json['employeeId'], role: json['role']);
  }

  toJson() {
    return {'employeeId': employeeId, 'role': role};
  }
}
