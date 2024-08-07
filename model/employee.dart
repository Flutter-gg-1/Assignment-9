import 'contact.dart';

class Employee {
  String? id;
  String? name;
  String? role;
  Contact? contact;

  Employee({this.id, this.name, this.role, this.contact});
  void toPrint() {
    print("employee detatils");
    print("id:$id");
    print("name:$name");
    print("role:$role");
    contact?.toPrint();
  }

  factory Employee.fromJson(Map<String, dynamic> json) {
    return Employee(
        id: json["id"],
        name: json['name'],
        role: json['role'],
        contact: Contact.fromJson(json['contact']));
  }
}
