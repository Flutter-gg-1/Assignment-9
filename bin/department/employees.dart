import 'contact.dart';
import 'projects.dart';

class Employees {
  final String id;
  final String name;
  final String role;
  final Contact? contact;
  final List<Projects>? projects;

  Employees({
    required this.id,
    required this.name,
    required this.role,
    required this.contact,
    required this.projects,
  });

  factory Employees.fromJson(Map<String, dynamic> json) {
    return Employees(
      id: json['id'],
      name: json['name'],
      role: json['role'],
      contact:  Contact.fromJson(json['contact']) ,
      projects: json['projects'] != null
          ? (json['projects'] as List).map((e) => Projects.fromJson(e)).toList()
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'role': role,
      'contact': contact?.toJason(),
      'projects': projects?.map((project) => project.toJason()).toList(),
    };
  }


}
