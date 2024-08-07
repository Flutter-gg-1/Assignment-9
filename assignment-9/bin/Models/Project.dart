import 'projecta.dart';
import 'projectb.dart';
import 'projectc.dart';
import 'projectd.dart';

class Project {
  final ProjectA projectA;
  final ProjectB projectB;
  final ProjectC projectC;
  final ProjectD projectD;

  Project(
      {required this.projectA,
      required this.projectB,
      required this.projectC,
      required this.projectD});

  factory Project.formJson(Map<String, dynamic> json) {
    return Project(
        projectA: ProjectA.fromJson(json["projectA"]),
        projectB: ProjectB.fromJson(json["projectB"]),
        projectC: ProjectC.fromJson(json["projectC"]),
        projectD: ProjectD.fromJson(json["projectD"]));
  }

  Map<String, dynamic> toJson() {
    return {
      "projectA": projectA.toJson(),
      "projectB": projectB.toJson(),
      "projectC": projectC.toJson(),
      "projectD": projectD.toJson(),
    };
  }
}
