import 'package:assignment9/models/check_null.dart';
import 'package:assignment9/models/contact.dart'; // contact class
import 'package:assignment9/models/project.dart'; // project class

class Employee {
  final String id;
  final String name;
  final String role;
  final Contact contact;
  final List<Project>? projects;

  Employee(
      {required this.contact,
      required this.id,
      required this.name,
      required this.projects,
      required this.role});

  factory Employee.fromJson(Map<String, dynamic> json) {
    List<Project> projectsList = [];
    List originalProjects = checkNull(json['projects'], 'projects');
    for (var project in originalProjects) {
      projectsList.add(Project.fromJson(project));
    }
    return Employee(
        contact: Contact.fromJson(checkNull(json['contact'], 'contact')),
        id: checkNull(json['id'], 'id'),
        name: checkNull(json['name'], 'name'),
        projects: projectsList,
        role: checkNull(json['role'], 'role'));
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'role': role,
      'contact': contact.toJson(),
      'projects': projects?.map((e) => e.toJson()).toList()
    };
  }
}