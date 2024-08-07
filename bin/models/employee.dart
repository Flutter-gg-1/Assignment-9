import 'department.dart';
import 'project.dart';

class Employee {
  final String id;
  final String name;
  final String role;
  final Contact contact;
  List<Project>? projects;

  Employee(
      {required this.id,
      required this.name,
      required this.role,
      required this.contact,
      this.projects});

  factory Employee.fromJson(Map json) {
    return Employee(
        id: json["id"],
        name: json["name"],
        role: json["role"],
        contact: Contact.fromJson(json["contact"]),
        projects:
            List.from(checkNull(value: json["projects"], title: "projects"))
                .map((element) {
          return Project.formJson(json[element]);
        }).toList());
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": name,
      "role": role,
      "contact": contact.toJson(),
      "projects": projects?.map((e) => e.toJson()).toList(),
    };
  }
}

class Contact {
  final String email;
  final String phone;

  Contact({required this.email, required this.phone});

  factory Contact.fromJson(Map<String, dynamic> json) {
    return Contact(email: json["email"], phone: json["phone"]);
  }
  Map<String, dynamic> toJson() {
    return {"email": email, "phone": phone};
  }
}
