class Project {
  // Class properties to store project details
  String projectId;
  String projectName;
  String roleInProject;

  // Constructor to initialize the Project object with required properties
  Project({
    required this.projectId,
    required this.projectName,
    required this.roleInProject,
  });

  // Factory constructor to create a Project object from a JSON map
  factory Project.fromJson(Map<String, dynamic> json) {
    return Project(
      projectId: json['projectId'],
      projectName: json['projectName'],
      roleInProject: json['roleInProject'],
    );
  }

  // Method to convert a Project object to a JSON map
  Map<String, dynamic> toJson() {
    return {
      'projectId': projectId,
      'projectName': projectName,
      'roleInProject': roleInProject,
    };
  }
}