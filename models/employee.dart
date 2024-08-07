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
        id: json['id'],
        name: json['name'],
        role: json['role'],
        contact: Contact.fromJson(json['contact']),
        projects: json['projects'] == null
            ? null
            : ((json['projects'] as List)
                .map((project) => EmployeeProject.fromJson(project))
                .toList()));
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
    return Contact(email: json['email'], phone: json['phone']);
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
        projectId: json['projectId'],
        projectName: json['projectName'],
        roleInProject: json['roleInProject']);
  }
  toJson() {
    return {
      'projectId': projectId,
      'projectName': projectName,
      'roleInProject': roleInProject
    };
  }
}
