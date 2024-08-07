class Team {
  final String employeeId;
  final int role;

  Team({required this.employeeId, required this.role});
  factory Team.fromJson(Map<String, dynamic> jason) {
    return Team(employeeId: jason['employeeId'], role: jason['role']);
  }

  toJason() {
    Map<String, dynamic>;
    return {"employeeId": employeeId, "role": role};
  }
}
