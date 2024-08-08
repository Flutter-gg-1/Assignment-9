import 'contact.dart';
import 'employees_projects.dart';
class Employee {
  final String id;
  final String name;
  final String role;
  final Contact contact;
  final List<EmployeeProject>? project; // optional

  Employee({required this.id, required this.name, required this.role, required this.contact, this.project});

  factory Employee.fromJson(Map<String, dynamic> json) {
    return Employee(
      id: json['id'],
      name: json['name'],
      role: json['role'],
      contact: Contact.fromJson(json['contact']),
      project: (json['projects'] as List?)?.map((project) => EmployeeProject.fromJson(project)).toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'role': role,
      'contact': contact.toJson(),
      //'projects': project?.map((project) => project.toJson()).toList(),
    };
  }
}
