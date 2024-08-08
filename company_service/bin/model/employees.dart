import 'contact.dart';

class Employees {
  final String id;
  final String name;
  final String role;
  final Contact contact;
  final List<Map<String, dynamic>>? projects;

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
      //this part of the code converts the value associated with the projects key
      //into a list of maps. Each map represents a project and its properties
      projects: json['projects'] != null
          ? List<Map<String, dynamic>>.from(json['projects'])
          : null,
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'role': role,
      'contact': contact.toJson(),
      'projects': projects,
    };
  }
}
