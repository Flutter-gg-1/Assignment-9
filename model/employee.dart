import 'contact.dart';
import 'employee_project.dart';

class Employee {
  String? id;
  String? name;
  String? role;
  Contact? contact;
  EmployeeProject? project;

  Employee({this.id, this.name, this.role, this.contact, this.project});
  void toPrint() {
    print("employee detatils");
    print("id:$id");
    print("name:$name");
    print("role:$role");
    contact?.toPrint();
    project?.toPrint();
  }

  factory Employee.fromJson(Map<dynamic, dynamic> json) {
    return Employee(
      id: json["id"],
      name: json['name'],
      role: json['role'],
      contact: Contact.fromJson(json['contact']),
      project: json['projects'] != null ? EmployeeProject.fromJson(json['projects'][0]) : null,
    );
  }
}
