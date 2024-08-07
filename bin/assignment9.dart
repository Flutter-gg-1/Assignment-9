void main() {}

// "engineering": {
//   "employees": [
//     {
//       "id": "E001",
//       "name": "Ahmed",
//       "role": "Software Engineer",
//       "contact": {
//         "email": "ahmed@example.com",
//         "phone": "+1234567890"
//       },
//     },
//     {
//       "id": "E002",
//       "name": "Fatimah",
//       "role": "DevOps Engineer",
//       "contact": {
//         "email": "fatimah@example.com",
//         "phone": "+0987654321"
//       },
//       "projects": [
//         {
//           "projectId": "P001",
//           "projectName": "Alpha",
//           "roleInProject": "DevOps Specialist"
//         }
//       ]
//     }
//   ],
// },

class Company {
  final Map<String, Departments> departments;
  final Map<String, Projects> projects;

  Company({required this.departments, required this.projects});
}

class Departments {
  final List<Employee> employee;
  Budget? budget;
}

class Employee {
  String? id;
  String? name;
  String? role;
  Contact? contact;
  List<Projects>? projects;

  Employee({this.id, this.name, this.role, this.contact, this.projects});

  factory Employee.fromJson(Map<String, dynamic> json) {
    return Employee(
      id: json["id"],
      name: json["name"],
      role: json["role"],
      contact: json["contact"],
      projects: json["projects"],
    );
  }
  Map<String, dynamic> toJison() {
    Map<String, dynamic> map = {};
    map["id"] = id;
    map["name"] = name;
    map["role"] = role;
    map["contact"] = contact;
    map["projects"] = projects;
    return map;
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
    Map<String, dynamic> map = {};
    map["email"] = email;
    map["phone"] = phone;
    return map;
  }
}

class Projects {
  final String projectId;
  final String projectName;
  final String roleInProject;

  Projects(
      {required this.projectId,
      required this.projectName,
      required this.roleInProject});

  factory Projects.fromJson(Map<String, dynamic> json) {
    return Projects(
        projectId: json["projectId"],
        projectName: json["projectName"],
        roleInProject: json["roleInProject"]);
  }

  Map<String, dynamic> toJison() {
    Map<String, dynamic> map = {};
    map["projectId"] = projectId;
    map["projectName"] = projectName;
    map["roleInProject"] = roleInProject;
    return map;
  }
}

// "budget": {
//       "total": 800000,
//       "expenses": [
//         {
//           "item": "Advertising",
//           "amount": 300000
//         },
//         {
//           "item": "Market Research",
//           "amount": 150000
//         }
//       ]
//     }
//   }

class Budget {
  int total;
  List<Expenses> expenses;

  Budget({required this.total, required this.expenses});
  factory Budget.fromJson(Map<String, dynamic> json) {
    return Budget(total: json["total"], expenses: json["expenses"]);
  }
}

class Expenses {
  String item;
  int amount;

  Expenses({required this.item, required this.amount});

  factory Expenses.fromJson(Map<String, dynamic> json) {
    return Expenses(item: json["item"], amount: json["amount"]);
  }
  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {};
    map["item"] = item;
    map["amount"] = amount;
    return map;
  }
}

// "projects": {
//   "projectA": {
//     "id": "P001",
//     "name": "Alpha",
//     "deadline": "2024-12-31",
//     "team": [
//       {
//         "employeeId": "E001",
//         "role": "Lead Developer"
//       },
//       {
//         "employeeId": "E002",
//         "role": "DevOps Specialist"
//       }
//     ]
//   },

class Project {
  String? id;
  String? name;
  String? deadline;
  List<Team> team;
}

class Team {
  String? employeeId;
  String? role;

  Team({required this.employeeId, required this.role});

  factory Team.fromJson(Map<>)
}
