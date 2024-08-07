import 'project_details.dart';

class Portfolio {
  ProjectA projectA;
  ProjectB projectB;
  ProjectC projectC;
  ProjectD projectD;

  Portfolio(
      {required this.projectA,
      required this.projectB,
      required this.projectC,
      required this.projectD});

  factory Portfolio.fromJson(Map<String, dynamic> json) {
    return Portfolio(
        projectA: ProjectA.fromJson(json['projectA']),
        projectB: ProjectB.fromJson(json['projectB']),
        projectC: ProjectC.fromJson(json['projectC']),
        projectD: ProjectD.fromJson(json['projectD']));
  }
}

class ProjectA {
  ProjectDetails? details;

  ProjectA({this.details});

  factory ProjectA.fromJson(Map<String, dynamic> json) {
    return ProjectA(details: ProjectDetails.fromJson(json));
  }
}

class ProjectB {
  ProjectDetails? details;

  ProjectB({this.details});

  factory ProjectB.fromJson(Map<String, dynamic> json) {
    return ProjectB(details: ProjectDetails.fromJson(json));
  }
}

class ProjectC {
  ProjectDetails? details;

  ProjectC({this.details});

  factory ProjectC.fromJson(Map<String, dynamic> json) {
    return ProjectC(details: ProjectDetails.fromJson(json));
  }
}

class ProjectD {
  ProjectDetails? details;

  ProjectD({this.details});

  factory ProjectD.fromJson(Map<String, dynamic> json) {
    return ProjectD(details: ProjectDetails.fromJson(json));
  }
}
