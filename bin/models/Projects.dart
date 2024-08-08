import 'check_null.dart';

class Project {
  final String id;
  final String name;
  final String deadline;
  final List<Team> team;

  Project({
    required this.id,
    required this.name,
    required this.deadline,
    required this.team,
  });

  factory Project.fromJson(Map<String, dynamic> json) {
    return Project(
      id: checkNull(value: json['id'], title: 'id'),
      name: checkNull(value: json['name'], title: 'name'),
      deadline: checkNull(value: json['deadline'], title: 'deadline'),
      team: (checkNull(value: json['team'], title: 'team') as List<dynamic>)
          .map((i) => Team.fromJson(i as Map<String, dynamic>))
          .toList(),
    );
  }
  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = {};
    data["id"] = id;
    data["name"] = name;
    data["deadline"] = deadline;
    data["team"] = team.map((teamMember) => teamMember.toJson()).toList();
    return data;
  }
}

class ProjectA extends Project {
  ProjectA({
    required super.id,
    required super.name,
    required super.deadline,
    required super.team,
  });
  factory ProjectA.fromJson(Map<String, dynamic> json) {
    return ProjectA(
      id: json['id'],
      name: json['name'],
      deadline: json['deadline'],
      team: (json['team'] as List<dynamic>)
          .map((item) => Team.fromJson(item as Map<String, dynamic>))
          .toList(),
    );
  }
}

class ProjectB extends Project {
  ProjectB({
    required super.id,
    required super.name,
    required super.deadline,
    required super.team,
  });
  factory ProjectB.fromJson(Map<String, dynamic> json) {
    return ProjectB(
      id: json['id'],
      name: json['name'],
      deadline: json['deadline'],
      team: (json['team'] as List<dynamic>)
          .map((item) => Team.fromJson(item as Map<String, dynamic>))
          .toList(),
    );
  }
}


class ProjectC extends Project {
  ProjectC({
    required super.id,
    required super.name,
    required super.deadline,
    required super.team,
  });
  factory ProjectC.fromJson(Map<String, dynamic> json) {
    return ProjectC(
      id: json['id'],
      name: json['name'],
      deadline: json['deadline'],
      team: (json['team'] as List<dynamic>)
          .map((item) => Team.fromJson(item as Map<String, dynamic>))
          .toList(),
    );
  }
}

class ProjectD extends Project {
  ProjectD({
    required super.id,
    required super.name,
    required super.deadline,
    required super.team,
  });
  factory ProjectD.fromJson(Map<String, dynamic> json) {
    return ProjectD(
      id: json['id'],
      name: json['name'],
      deadline: json['deadline'],
      team: (json['team'] as List<dynamic>)
          .map((item) => Team.fromJson(item as Map<String, dynamic>))
          .toList(),
    );
  }
}

class Team {
  final String employeeId;
  final String role;

  Team({
    required this.employeeId,
    required this.role,
  });

  factory Team.fromJson(Map<String, dynamic> json) {
    return Team(
      employeeId: checkNull(value: json['employeeId'], title: 'employeeId'),
      role: checkNull(value: json['role'], title: 'role'),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'employeeId': employeeId,
      'role': role,
    };
  }
}
