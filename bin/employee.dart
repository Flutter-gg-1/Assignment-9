import 'check_null_function.dart';
import 'employees_project_details.dart';
import 'contact.dart';

class Employee {
  final String id;
  final String name;
  final String role;
  final Contact contact;
  final List<EmployeesProjectDetails> projects;

  Employee(
      {required this.contact,
      required this.id,
      required this.name,
      required this.projects,
      required this.role});

  factory Employee.fromJson(Map<String, dynamic> json) {
    return Employee(
        contact: Contact.fromJson(json["contact"] as Map<String, dynamic>),
        id: checkNull(value: json["id"], title: "Employee id"),
        name: checkNull(value: json["name"], title: "Employee's name"),
        projects: List.from(json["employees"]).map((element) {
          return EmployeesProjectDetails.fromJson(element);
        }).toList(),
        role: checkNull(value: json["role"], title: "Employee's role"));
  }

  Map<String, dynamic> toJson(){
    return {
      "id": id,
          "name": name,
          "role": role,
          "contact": contact.toJson(),
          "projects": projects.map((e) { e.toJson();}).toList(),
    };
  }
}
