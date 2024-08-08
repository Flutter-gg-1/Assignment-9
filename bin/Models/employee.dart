import 'contact.dart';
import 'employees_project.dart';

class Employee {
  final String id;
  final String name;
  final String role;
  final Contact contact;
  final List<EmployeesProject>? projects;

  Employee({
    required this.id,
    required this.name,
    required this.role,
    required this.contact,
    this.projects,
  });

  factory Employee.fromJson(Map<String, dynamic> json) {
    return Employee(
        id: json["id"],
        name: json["name"],
        role: json["role"],
        contact: Contact.fromJson(json["contact"]),
        projects: (json["projects"] as List<Map<String, dynamic>>?)?.map((element) {
              return EmployeesProject.fromJson(element);
            }).toList() ??
            []);
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": name,
      "role": role,
      "contact": contact.toJson(),
      "projects": projects!.map((element) {
        return element.toJson();
      })
    };
  }
}
