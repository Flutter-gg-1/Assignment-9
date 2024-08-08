class TeamMember {
  final String employeeId;
  final String role;

  TeamMember({required this.employeeId, required this.role});

  factory TeamMember.fromJson(Map<String, dynamic> json) {
    return TeamMember(
      employeeId: json['employeeId'],
      role: json['role'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'employeeId': employeeId,
      'role': role,
    };
  }
}