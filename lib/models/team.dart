class Team {
  final String employeeId;
  final String role;

  Team({required this.employeeId, required this.role});

  factory Team.fromJson(Map<String,dynamic> json) {
    return Team(employeeId: json['employeeId'], role: json['role']);
  }

  Map<String,dynamic> toJson() {
    return {
      'employeeId' : employeeId,
      'role' : role
    };
  }
}