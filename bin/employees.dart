import 'contact.dart';
import 'projects.dart';

class Employees {
  final String id;
  final String name;
  final String role;
  final Contact contact;
  final List<Projects>? projects;

  Employees(
      {required this.id,
      required this.name,
      required this.role,
      required this.contact,
      required this.projects});
  factory Employees.fromJson(Map<String, dynamic> jason) {
    return Employees(
        id: jason['id'],
        name: jason['name'],
        role: jason['role'],
        contact: Contact.fromJson(jason["contact"]),
        projects: jason['projects'] != null
          ? (jason['projects'] as List)
              .map((project) => Projects.fromJson(project))
              .toList()
          : null,);
  }

  toJason() {
    Map<String, dynamic>;
    return {
      "id": id,
      "name": name,
      "role": role,
      "contact": contact.toJason(),
      "projects": projects?.map((project) => project.toJason()).toList(),
    };
  }
}
