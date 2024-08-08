class EmployeeData {
  String id;
  String name;
  String role;
  Map<String, String> contact;
  List<String> projects;
  EmployeeData({
    required this.id,
    required this.name,
    required this.role,
    required this.contact,
    required this.projects,
  });

  factory EmployeeData.fromJson(Map<String, dynamic> json) {
    return EmployeeData(
      id: json['id'],
      name: json['name'],
      role: json['role'],
      contact: json['contact'],
      projects: json['projects'],
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'role': role,
      'contact': contact,
      'projects': projects,
    };
  }
}