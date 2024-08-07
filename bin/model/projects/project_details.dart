import 'team.dart';

class ProjectDetails {
  String? id;
  String? name;
  String? deadline;
  List<Team>? teams;

  ProjectDetails({this.id, this.name, this.deadline, this.teams});

  factory ProjectDetails.fromJson(Map<String, dynamic> json) {
    return ProjectDetails(
        id: json['id'],
        name: json['name'],
        deadline: json['deadline'],
        teams: (json['team'] != null)
            ? (json['team'] as List<dynamic>)
                .map((e) => Team.fromJson(e))
                .toList()
            : null);
  }
}
