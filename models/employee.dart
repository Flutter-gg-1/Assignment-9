import '../utils/handle.dart';

class Employee {
  String id;
  String name;
  String role;
  Contact contact;
  List<EmployeeProject>? projects;

  Employee(
      {required this.id,
      required this.name,
      required this.role,
      required this.contact,
      required this.projects});
  factory Employee.fromJson(Map<String, dynamic> json) {
    return Employee(
        id: checkValue(value: json['id'], title: 'Employee(id)'),
        name: checkValue(value: json['name'], title: 'Employee(name)'),
        role: checkValue(value: json['role'], title: 'Employee(role)'),
        contact: Contact.fromJson(
            checkValue(value: json['contact'], title: 'Contact')),
        projects: json['projects'] == null
            ? null
            : (json['projects'] as List)
                .map((project) => EmployeeProject.fromJson(project))
                .toList());
  }

  toJson() {
    return {
      'id': id,
      'name': name,
      'role': role,
      'contact': contact.toJson(),
      'projects': projects?.map((project) => project.toJson()).toList()
    };
  }
}

class Contact {
  String email;
  String phone;

  Contact({
    required this.email,
    required this.phone,
  });

  factory Contact.fromJson(Map<String, dynamic> json) {
    return Contact(
        email: checkValue(value: json['email'], title: 'Contact(email)'),
        phone: checkValue(value: json['phone'], title: 'Contact(phone)'));
  }

  toJson() {
    return {'email': email, 'phone': phone};
  }
}

class EmployeeProject {
  String projectId;
  String projectName;
  String roleInProject;

  EmployeeProject({
    required this.projectId,
    required this.projectName,
    required this.roleInProject,
  });

  factory EmployeeProject.fromJson(Map<String, dynamic> json) {
    return EmployeeProject(
        projectId: checkValue(
            value: json['projectId'], title: 'EmployeeProject(projectId)'),
        projectName: checkValue(
            value: json['projectName'], title: 'EmployeeProject(projectName)'),
        roleInProject: checkValue(
            value: json['roleInProject'],
            title: 'EmployeeProject(roleInProject)'));
  }
  toJson() {
    return {
      'projectId': projectId,
      'projectName': projectName,
      'roleInProject': roleInProject
    };
  }
}
