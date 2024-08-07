class Employee {
  String id;
  String name;
  String role;
  Contact contact;
  Employee(
      {required this.id,
      required this.name,
      required this.role,
      required this.contact});

  factory Employee.fromJson(Map<String, dynamic> json) {
    return Employee(
        id: json["id"],
        name: json["name"],
        role: json["role"],
        contact: Contact.fromJson(json["contact"]));
  }

  Map<String, dynamic> toJson() => {"id": id, "name": name, "role": role};
}

class Contact {
  String email;
  String phone;

  Contact({required this.email, required this.phone});

  factory Contact.fromJson(Map<String, dynamic> json) {
    return Contact(email: json["email"], phone: json["phone"]);
  }

  Map<String, dynamic> toJson() => {"email": email, "phone": phone};
}

