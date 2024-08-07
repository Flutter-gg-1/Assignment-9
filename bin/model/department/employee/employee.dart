import 'contact.dart';
import 'project.dart';

class Employee {
  String? id;
  String? name;
  String? role;
  Contact? contact;
  List<Project>? projects;

  Employee({this.id, this.name, this.role, this.contact, this.projects});

  factory Employee.fromJson(Map<String, dynamic> json) {
    return Employee(
        id: json['id'],
        name: json['name'],
        role: json['role'],
        contact: Contact.fromJson(json['contact']),
        projects: (json['projects'] != null)
            ? (json['projects'] as List<dynamic>)
                .map((proj) => Project.fromJson(proj))
                .toList()
            : null);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'role': role,
      'contact': contact?.toJson(),
      'projects': projects?.map((e) => e.toJson()).toList()
    };
  }
}
