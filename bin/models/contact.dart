class Contact {
  final String email;
  final String phone;

  Contact({required this.email, required this.phone});

  factory Contact.fromJson(Map<String, dynamic> json) {
    return Contact(email: json["email"], phone: json["phone"]);
  }

  Map<String, dynamic> toJson() => {"email": email, "phone": phone};
}

class ProjectEmployee {
  final String projectId;
  final String projectName;
  final String roleInProject;

  ProjectEmployee({
    required this.projectId,
    required this.projectName,
    required this.roleInProject,
  });

  factory ProjectEmployee.fromJson(Map<String, dynamic> json) {
    return ProjectEmployee(
      projectId: json["projectId"],
      projectName: json["projectName"],
      roleInProject: json["roleInProject"],
    );
  }

  Map<String, dynamic> toJson() => {
        "projectId": projectId,
        "projectName": projectName,
        "roleInProject": roleInProject,
      };
}
