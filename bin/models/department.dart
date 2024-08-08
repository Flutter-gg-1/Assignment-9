import 'enigneering.dart';
import 'marketing.dart';

class Department {
  Engineering? engineering;
  final Marketing marketing;

  Department({this.engineering, required this.marketing});

  factory Department.fromJson(Map<String, dynamic> json) {
    return Department(
        engineering: Engineering.fromJson(json['engineering']),
        marketing: Marketing.fromJson(json['marketing']));
  }

  Map<String, dynamic> toJson() {
    return {
      "engineering": engineering?.toJson(),
      "marketing": marketing.toJson(),
    };
  }
}

class Projects {
  final AllProjects projectA;
  final AllProjects projectB;
  final AllProjects projectC;
  final AllProjects projectD;

  Projects({
    required this.projectA,
    required this.projectB,
    required this.projectC,
    required this.projectD,
  });

  factory Projects.fromJson(Map<String, dynamic> json) {
    return Projects(
      projectA: AllProjects.fromJson(json["projectA"]),
      projectB: AllProjects.fromJson(json["projectB"]),
      projectC: AllProjects.fromJson(json["projectC"]),
      projectD: AllProjects.fromJson(json["projectD"]),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'projectA': projectA.toJson(),
      'projectB': projectB.toJson(),
      'projectC': projectC.toJson(),
      'projectD': projectD.toJson(),
    };
  }
}

class AllProjects {
  final String id;
  final String name;
  final String deadline;
  final List<String> team;

  AllProjects({
    required this.deadline,
    required this.id,
    required this.name,
    required this.team,
  });

  factory AllProjects.fromJson(Map<String, dynamic> json) {
    return AllProjects(
      deadline: json["deadline"],
      id: json["id"],
      name: json["name"],
      team: json["team"],
    );
  }

  Map<String, dynamic> toJson() {
    return {"id": id, "name": name, "deadline": deadline, "team": team};
  }
}
