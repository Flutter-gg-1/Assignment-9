class ProjectData {
  final String id;
  final String name;
  final String deadline;
  final List<Team> team;

  ProjectData({
    required this.id,
    required this.name,
    required this.deadline,
    required this.team,
  });

  factory ProjectData.fromJson(Map<String, dynamic> json) {
    return ProjectData(
      id: json['id'],
      name: json['name'],
      deadline: json['deadline'],
      team: (json['team'] as List)
          .map((member) => Team.fromJson(member))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'deadline': deadline,
      'team': team.map((m) => m.toJson()).toList(),
    };
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
      employeeId: json['employeeId'],
      role: json['role'],
    );
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = {};
    data["employeeId"] = employeeId;
    data["role"] = role;
    return data;
  }
}
