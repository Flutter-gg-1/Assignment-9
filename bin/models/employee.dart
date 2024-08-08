import 'check_null.dart';
import 'Projects.dart';

class Employees {
  final String id;
  final String name;
  final String role;
  final Contact contact;
  final List<Project> projects;

  Employees(
      {required this.id,
      required this.name,
      required this.contact,
      required this.role,
      required this.projects});

  factory Employees.fromJson(Map<String, dynamic> json) {
    return Employees(
        id: checkNull(value: json['id'], title: 'id'),
      name: checkNull(value: json['name'], title: 'name'),
      role: checkNull(value: json['role'], title: 'role'),
      contact: Contact.fromJson(checkNull(value: json['contact'], title: 'contact') as Map<String, dynamic>),
      projects: (checkNull(value: json["projects"], title: "projects")
              as List<String>)
          .map((p) => Project.fromJson(p as Map<String, dynamic>))
          .toList(),
    );
  }
  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = {};
    data["id"] = id;
    data["name"] = name;
    data["role"] = role;
    data["name"] = name;
    data["contact"] = contact.toJson();
    data["projects"] = projects.map((p) => p.toJson()).toList();
    return data;
  }
}

class Contact {
  final String email;
  final String phone;

  Contact({required this.email, required this.phone});

  factory Contact.fromJson(Map<String, dynamic> json) {
    return Contact(email: checkNull(value: json['email'], title: 'email'),
      phone: checkNull(value: json['phone'], title: 'phone'),);
  }
  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = {};
    data["email"] = email;
    data["phone"] = phone;
    return data;
  }
}

class Expenses {
  final String item;
  final String amount;

  Expenses({required this.item, required this.amount});

  factory Expenses.fromJson(Map<String, dynamic> json) {
    return Expenses( item: checkNull(value: json['item'], title: 'item'),
      amount: checkNull(value: json['amount'], title: 'amount'),
    );
  }
  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = {};
    data["item"] = item;
    data["amount"] = amount;
    return data;
  }
}

class Budget {
  final int total;
  final List<Expenses> expenses;

  Budget({required this.total, required this.expenses});

  factory Budget.fromJson(Map<String, dynamic> json) {
    return Budget(
      total: checkNull(value: json['total'], title: 'total'),
      expenses: (checkNull(value: json['expenses'], title: 'expenses') as List<dynamic>)
          .map((expense) => Expenses.fromJson(expense as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'total': total,
      'expenses': expenses.map((e) => e.toJson()).toList(),
    };
  }
}
