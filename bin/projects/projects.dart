import '../projects/projectA.dart';
import '../projects/projectB.dart';
import '../projects/projectC.dart';
import '../projects/projectD.dart';

class Projects {
  final ProjectA? projectA;
  final ProjectB? projectB;
  final ProjectC? projectC;
  final ProjectD? projectD;

  Projects(
      {required this.projectA,
      required this.projectB,
      required this.projectC,
      required this.projectD});

  factory Projects.fromJson(Map<String, dynamic> json) {
    return Projects(
        projectA: ProjectA.fromJson(json['projects']),
        projectB: ProjectB.fromJson(json['projects'] ['projectB']),
        projectC: ProjectC.fromJson(json['projects'] ['projectC']),
        projectD: ProjectD.fromJson(json['projects'] ['projectD']));
  }

  Map<String, dynamic> toJson() {
    return {
      'projectA': projectA?.toJason(),
      'projectB': projectB?.toJason(),
      'projectC': projectC?.toJason(),
      'projectD': projectD?.toJason()
    };
  }
}
