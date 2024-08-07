class Team {
  String? employeeId;
  String? role;

  Team({this.employeeId, this.role});

  factory Team.fromJson(Map<String, dynamic> json) {
    return Team(employeeId: json['employeeId'], role: json['role']);
  }
}
