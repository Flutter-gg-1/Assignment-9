class Employee {
  String id;
  String name;
  String role;
  Employee({required this.id, required this.name, required this.role});

  factory Employee.fromJson(Map<String, dynamic> json) {
    return Employee(id: json["id"], name: json["name"], role: json["role"]);
  }

  Map<String, dynamic> toJson() => {"id": id, "name": name, "role": role};
}
