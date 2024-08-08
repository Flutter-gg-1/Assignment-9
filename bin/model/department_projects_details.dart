import 'team.dart';
import 'check_null_function.dart';
class DepartmentProjectsDetails {
  final String id;
  final String name;
  final String deadline;
  final List<Team> team;

  DepartmentProjectsDetails(
      {required this.deadline,
      required this.id,
      required this.name,
      required this.team});

  factory DepartmentProjectsDetails.fromJson(Map<String, dynamic> json) {
    return DepartmentProjectsDetails(
        deadline:
            checkNull(value: json["deadline"].toString(), title: "deadline"),
        id: checkNull(value: json["id"], title: "id"),
        name: checkNull(value:  json["name"], title: "name"),
        team: List.from(json["team"]).map((element) {
          return Team.fromJson(element);
        }).toList(),);
  }

  Map<String, dynamic> toJson() {
    return {"id": id, "name": name, "deadline": deadline, "team": team.map((e) { e.toJson();}).toList()};
  }

}

