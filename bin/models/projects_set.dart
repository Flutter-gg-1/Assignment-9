class ProjectSet {
  final ProjectA projectA;
  final ProjectB projectB;
  final ProjectC projectC;
  final ProjectD projectD;

  ProjectSet(
      {required this.projectA,
      required this.projectB,
      required this.projectC,
      required this.projectD});

  factory ProjectSet.fromJson(Map json) {
    return ProjectSet(
        projectA: json["projectA"],
        projectB: json["projectB"],
        projectC: json["projectC"],
        projectD: json["projectD"]);
  }

  toJson() {
    return {
      "projectA": projectA,
      "projectB": projectB,
      "projectC": projectC,
      "projectD": projectD
    };
  }
}

class ProjectA {
  final String id;
  final String name;
  final String deadline;
  final Team team;

  ProjectA(
      {required this.id,
      required this.name,
      required this.deadline,
      required this.team});

  factory ProjectA.fromJson(Map json) {
    return ProjectA(
        id: json["id"],
        name: json["name"],
        deadline: json["deadline"],
        team: Team.fromJson(json["team"]));
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": name,
      "deadline": deadline,
      "team": team.toJson()
    };
  }
}

class ProjectB {
  final String id;
  final String name;
  final String deadline;
  final Team team;

  ProjectB(
      {required this.id,
      required this.name,
      required this.deadline,
      required this.team});

  factory ProjectB.fromJson(Map json) {
    return ProjectB(
        id: json["id"],
        name: json["name"],
        deadline: json["deadline"],
        team: Team.fromJson(json["team"]));
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": name,
      "deadline": deadline,
      "team": team.toJson()
    };
  }
}

class ProjectC {
  final String id;
  final String name;
  final String deadline;
  final Team team;

  ProjectC(
      {required this.id,
      required this.name,
      required this.deadline,
      required this.team});

  factory ProjectC.fromJson(Map json) {
    return ProjectC(
        id: json["id"],
        name: json["name"],
        deadline: json["deadline"],
        team: Team.fromJson(json["team"]));
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": name,
      "deadline": deadline,
      "team": team.toJson()
    };
  }
}

class ProjectD {
  final String id;
  final String name;
  final String deadline;
  final Team team;

  ProjectD(
      {required this.id,
      required this.name,
      required this.deadline,
      required this.team});

  factory ProjectD.fromJson(Map json) {
    return ProjectD(
        id: json["id"],
        name: json["name"],
        deadline: json["deadline"],
        team: Team.fromJson(json["team"]));
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": name,
      "deadline": deadline,
      "team": team.toJson()
    };
  }
}

class Team {
  final String employeeId;
  final String role;

  Team({required this.employeeId, required this.role});

  factory Team.fromJson(Map json) {
    return Team(employeeId: json["employeeId"], role: json["role"]);
  }

  Map<String, dynamic> toJson() {
    return {"employeeId": employeeId, "role": role};
  }
}
