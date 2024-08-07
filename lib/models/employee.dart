import 'package:assignment9/models/check_null.dart';  // check null function
import 'package:assignment9/models/contact.dart';     // contact class
import 'package:assignment9/models/project.dart';     // project class

class Employee {
  final String id;
  final String name;
  final String role;
  final Contact contact;
  late List<Project>? projects;

  Employee(
      {required this.contact,
      required this.id,
      required this.name,
      this.projects,
      required this.role});

  factory Employee.fromJson(Map<String, dynamic> json) {
    Employee employee = Employee(
        contact: Contact.fromJson(checkNull(json['contact'], 'contact')),
        id: checkNull(json['id'], 'id'),
        name: checkNull(json['name'], 'name'),
        role: checkNull(json['role'], 'role'));
    if (json['projects'] != null) {
      List<Project> projects = [];
      for (var project in json['projects']) {
        projects.add(Project.fromJson(project));
      }
      employee.projects = projects;
    }
    return employee;
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {};
    map['id'] = id;
    map['name'] = name;
    map['role'] = role;
    map['contact'] = contact.toJson();
    if (projects != null) {
      map['projects'] = projects;
    }
    return map;
  }
}
