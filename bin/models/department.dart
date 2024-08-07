import 'budget.dart';
import 'engineering.dart';
import 'marketing.dart';
import 'project.dart';
import 'projects_set.dart';

class Company {
  final Department department;
  ProjectSet? projects;

  Company({required this.department, this.projects});

  factory Company.fromJson(Map json) {
    return Company(
        department: checkNull(
            value: Department.fromJson(json["departments"]),
            title: 'departments'));
    // projects: checkNull(
    //     value: Project.formJson(json["projects"]), title: "projects"));
  }

  Map<String, dynamic> toJson() {
    return {"departments": department};
  }
}

class Department {
  final Engineering engineering;
  final Marketing marketing;
  final Budget budget;

  Department(
      {required this.engineering,
      required this.marketing,
      required this.budget});

  factory Department.fromJson(Map json) {
    return Department(
        engineering: checkNull(
            value: Engineering.fromJson(json["engineering"]),
            title: "engineering"),
        marketing: checkNull(
            value: Marketing.fromJson(json["marketing"]), title: '"marketing"'),
        budget:
            checkNull(value: Budget.fromJson(json["budget"]), title: "budget"));
  }
  Map<String, dynamic> toJson() {
    return {
      "engineering": engineering.toJson(),
      "marketing": marketing.toJson(),
      "budget": budget.toJson()
    };
  }
}

checkNull({required dynamic value, required String title}) {
  if (value.toString().toLowerCase() == "null") {
    throw FormatException("Error at $title");
  } else {
    return value;
  }
}
