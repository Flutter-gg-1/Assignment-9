import 'contact.dart';

class Employee {
  final String id;
  final String name;
  final String role;
  final Contact? contact;
  final List<ProjectEmployee>? projects;

  Employee({
    this.contact,
    required this.id,
    required this.name,
    this.projects,
    required this.role,
  });

  factory Employee.fromJson(Map<String, dynamic> json) {
    return Employee(
      id: json["id"],
      name: json["name"],
      role: json["role"],
      contact:
          json['contact'] != null ? Contact.fromJson(json['contact']) : null,
      projects: json['projects'] != null
          ? (json["projects"] as List)
              .map((project) => ProjectEmployee.fromJson(project))
              .toList()
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'role': role,
      'contact': contact?.toJson(), // Handle null contact
      'projects': projects
          ?.map((project) => project.toJson())
          .toList(), // Handle null projects
    };
  }
}
