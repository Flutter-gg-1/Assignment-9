import 'contact.dart';
import 'employee_project.dart';

class Employees {
  final String id;
  final String name;
  final String role;
  final Contact contact;
  final List<ProjectsEmploy>? projects;

  Employees(
      {required this.id,
      required this.name,
      required this.role,
      required this.contact,
      this.projects});

  factory Employees.fromJson(Map<String, dynamic> json) {
    return Employees(
        id: json['id'],
        name: json['name'],
        role: json['role'],
        contact: Contact.fromJson(json['contact']),
        projects: json['projects'] == null
            ? null
            : ((json['projects'] as List)
                .map((project) => ProjectsEmploy.fromJson(project))
                .toList()));
  }
  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {};
    map["id"] = id;
    map["name"] = name;
    map["role"] = role;
    map["contact"] = contact.toJson();
    if (projects != null) {
      map["projects"] = projects!
          .map((project) => project.toJson())
          .toList(); //to return it as a list of data instead of one value
    }
    return map;
  }
}
