import 'contact.dart';

class Employee {
  final String id;
  final String name;
  final String role;
  final Contact contact;

  Employee({
    required this.id,
    required this.name,
    required this.role,
    required this.contact,
  });

  factory Employee.fromJson(Map<String, dynamic> json) {
    return Employee(
        id: json["id"],
        name: json["name"],
        role: json["role"],
        contact: Contact.fromJson(json["contact"]));
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": name,
      "role": role,
      "contact": contact.toJson(),
    };
  }
}
