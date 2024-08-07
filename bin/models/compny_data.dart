// class CompanyData {
//   final String departments;
//   final String projects;

//   CompanyData({required this.departments, required this.projects});

//   factory CompanyData.fromJson(Map<String, dynamic> jaspn) {
//     return;
//   }
// }

class Departments {}

class Engineering {
  final List<Employees> employees;
  Engineering({required this.employees});

  factory Engineering.fromJson(Map<String, dynamic> json) {
    return Engineering(
        employees: (json["employees"] as List)
            .map((e) => Employees.fromJson(e as Map<String, dynamic>))
            .toList());
  }
  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = {};
    data["employees"] = employees.map((e) => e.toJson()).toList();

    return data;
  }
}



class Employees {
  final String id;
  final String name;
  final String role;
  final Contact contact;
  final List<Projects> projects;

  Employees(
      {required this.id,
      required this.name,
      required this.contact,
      required this.role,
      required this.projects});

  factory Employees.fromJson(Map<String, dynamic> json) {
    return Employees(
      id: json["id"],
      name: json["name"],
      role: json["role"],
      contact: Contact.fromJson(json["contact"]),
      projects: (checkNull(value: json["projects"], title: "projects")
              as List<String>)
          .map((p) => Projects.fromJson(p as Map<String, dynamic>))
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
    return Contact(email: json["email"], phone: json["phone"]);
  }
  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = {};
    data["email"] = email;
    data["phone"] = phone;
    return data;
  }
}

class Projects {
  final String projectId;
  final String projectName;
  final String roleInProject;

  Projects(
      {required this.projectName,
      required this.roleInProject,
      required this.projectId});

  factory Projects.fromJson(Map<String, dynamic> json) {
    return Projects(
        projectName: json["projectName"],
        roleInProject: json["roleInProject"],
        projectId: json["projectId"]);
  }
  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = {};
    data["projectName"] = projectName;
    data["roleInProject"] = roleInProject;
    data["projectId"] = projectId;
    return data;
  }
}

checkNull({required String value, required String title}) {
  if (value.toLowerCase() == "null") {
    throw FormatException("Ther is error with $title");
  }
}

class Expenses {
  final String item;
  final String amount;

  Expenses({required this.item, required this.amount});

  factory Expenses.fromJson(Map<String, dynamic> json) {
    return Expenses(item: json["item"], amount: json["amount"]);
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
        total: json["total"],
        expenses: (json["expenses"] as List)
            .map((e) => Expenses.fromJson(e))
            .toList());
  }
  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = {};
    data["total"] = total;
    data["expenses"] = expenses.map((e) => toJson()).toList;
    return data;
  }
}
