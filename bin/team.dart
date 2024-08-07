import 'check_null_function.dart';
class Team {
  final String employeeId;
  final String role;

  Team({required this.employeeId, required this.role});

  factory Team.fromJson(Map<String, dynamic> json) {
    return Team(employeeId: checkNull(value:  json["employeeId"], title: "employeeId"), role:checkNull(value:  json["role"] ,title: "role"));
  }

  Map<String, dynamic> toJson() {
    return {"employeeId": employeeId, "role": role};
  }
}
