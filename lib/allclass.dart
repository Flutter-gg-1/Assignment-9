class Company {
  //DepartmentsCompany
  //ProjectCompany
}

//////////Company Holder
class DepartmentsCompany {
  //Engineering
  //Marketing
}

//////////Departments Holder
class Marketing {
  List<Employees> employeeMarketing;
  final Budget budget;

  Marketing({required this.employeeMarketing, required this.budget});

  factory Marketing.fromJson(Map<String, dynamic> json) {
    List<Employees> getEmployeeMap = [];

    for (var val in json["employees"]) {
      getEmployeeMap.add(Employees.fromJson(val));
    }
    return Marketing(
        employeeMarketing: getEmployeeMap,
        budget: Budget.fromJson(json['budget']));
  }
  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {};
    map["employees"] = employeeMarketing;
    map["budget"] = budget;

    return map;
  }
}

//////////Departments Holder
class Engineering {
  List<Employees> employee;
  Engineering({required this.employee});

  factory Engineering.fromJson(Map<String, dynamic> json) {
    List<Employees> getEmployeeMap = [];

    for (var val in json["employees"]) {
      getEmployeeMap.add(Employees.fromJson(val));
    }
    return Engineering(employee: getEmployeeMap);
  }

  Map<String, dynamic> toJson() {
    List<Map<String, dynamic>> displayEmployeeMap = [];

    for (var val in employee) {
      displayEmployeeMap.add(val.toJson());
    }

    return {"projects": displayEmployeeMap};
  }
}

//////////Company Holder
class ProjectCompany {}
//////////Company Holder

//////////Marketing Holder
class Budget {
  final int total;
  List<Expenses> expenses;

  Budget({required this.total, required this.expenses});

  factory Budget.fromJson(Map<String, dynamic> json) {
    return Budget(
        total: json['total'],
        expenses: List.from(json["expenses"]).map((element) {
          return Expenses.fromJson(element);
        }).toList());
  }
  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {};
    map["total"] = total;
    map["expenses"] = expenses;
    return map;
  }
}

class Expenses {
  final String item;
  final int amount;
  Expenses({required this.amount, required this.item});

  factory Expenses.fromJson(Map<String, dynamic> json) {
    return Expenses(item: json['item'], amount: json['amount']);
  }
  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {};
    map["item"] = item;
    map["amount"] = amount;

    return map;
  }
}

//////////Engineering Holder
class Employees {
  final String id;
  final String name;
  final String role;
  final Contact contact;
  final List<Projects>? projects;

  Employees(
      {required this.id,
      required this.name,
      required this.role,
      required this.contact,
      this.projects});

  factory Employees.fromJson(Map<String, dynamic> json) {
    return Employees(
        id: json['id'],
        name: json['name'],
        role: json['role'],
        contact: Contact.fromJson(json['contact']),
        projects: List.from(json["projects"]).map((element) {
          return Projects.fromJson(element);
        }).toList());
  }
  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {};
    map["id"] = id;
    map["name"] = name;
    map["role"] = role;
    map["contact"] = contact.toJson();
    if (projects != null) {
      map["projects"] = projects;
    }
    return map;
  }
}

class Contact {
  final String email;
  final String phone;

  Contact({required this.email, required this.phone});

  factory Contact.fromJson(Map<String, dynamic> json) {
    return Contact(email: json['email'], phone: json['phone']);
  }
  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {};
    map["email"] = email;
    map["phone"] = phone;

    return map;
  }
}

class Projects {
  final String? projectId;
  final String? projectName;
  final String? roleInProject;

  Projects({this.projectId, this.projectName, this.roleInProject});

  factory Projects.fromJson(Map<String, dynamic> json) {
    return Projects(
        projectId: json['projectId'],
        projectName: json['projectName'],
        roleInProject: json['roleInProject']);
  }
  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {};
    map["projectId"] = projectId;
    map["projectName"] = projectName;
    map["roleInProject"] = roleInProject;

    return map;
  }
}
//////////Engineering Holder