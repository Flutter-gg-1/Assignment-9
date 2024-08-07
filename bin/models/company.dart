class Company {
  Map<String, Departments> departments;
  Map<String, Project> projects;

  Company({required this.departments, required this.projects});

  factory Company.fromJson(Map<String, dynamic> json) {
    Map<String, Departments> departments = {};
    json['departments'].forEach((key, value) {
      departments[key] = Departments.fromJson(value);
    });

    Map<String, Project> projects = {};
    json['projects'].forEach((key, value) {
      projects[key] = Project.fromJson(value);
    });

    return Company(departments: departments, projects: projects);
  }

  Map<String, dynamic> toJson() {
    return {
      "departments": departments.map((key, value) => MapEntry(key, value.toJson())),
      "projects": projects.map((key, value) => MapEntry(key, value.toJson())),
    };
  }
}

class Departments {
  List<Employee> employee;
  Budget? budget;

  Departments({required this.employee, this.budget});

  factory Departments.fromJson(Map<String, dynamic> json) {
    var employeeJson = json["employees"] as List? ?? [];
    List<Employee> employee = employeeJson
        .map((e) => Employee.fromJson(e as Map<String, dynamic>))
        .toList();
    Budget? budget = json["budget"] != null
        ? Budget.fromJson(json["budget"] as Map<String, dynamic>)
        : null;
    return Departments(employee: employee, budget: budget);
  }

  Map<String, dynamic> toJson() {
    return {
      "employees": employee.map((e) => e.toJson()).toList(),
      "budget": budget?.toJson(),
    };
  }
}

class Employee {
  String? id;
  String? name;
  String? role;
  Contact contact;
  List<ProjectsAssignment> projects;

  Employee(
      {this.id,
      this.name,
      this.role,
      required this.contact,
      required this.projects});

  factory Employee.fromJson(Map<String, dynamic> json) {
    var projectsJson = json['projects'] as List? ?? [];
    List<ProjectsAssignment> projects = projectsJson
        .map((e) => ProjectsAssignment.fromJson(e))
        .toList();
    return Employee(
        id: json["id"] as String?,
        name: json["name"] as String?,
        role: json["role"] as String?,
        contact: Contact.fromJson(json['contact'] as Map<String, dynamic>),
        projects: projects);
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": name,
      "role": role,
      "contact": contact.toJson(),
      "projects": projects.map((project) => project.toJson()).toList(),
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
    return {
      "email": email,
      "phone": phone,
    };
  }
}

class ProjectsAssignment {
  final String projectId;
  final String projectName;
  final String roleInProject;

  ProjectsAssignment(
      {required this.projectId,
      required this.projectName,
      required this.roleInProject});

  factory ProjectsAssignment.fromJson(Map<String, dynamic> json) {
    return ProjectsAssignment(
        projectId: json["projectId"],
        projectName: json["projectName"],
        roleInProject: json["roleInProject"]);
  }

  Map<String, dynamic> toJson() {
    return {
      "projectId": projectId,
      "projectName": projectName,
      "roleInProject": roleInProject,
    };
  }
}

class Budget {
  int total;
  List<Expenses> expenses;

  Budget({required this.total, required this.expenses});

  factory Budget.fromJson(Map<String, dynamic> json) {
    var expen = json['expenses'] as List? ?? [];
    List<Expenses> expenses = expen.map((e) => Expenses.fromJson(e as Map<String, dynamic>)).toList();
    return Budget(total: json["total"] as int, expenses: expenses);
  }

  Map<String, dynamic> toJson() {
    return {
      "total": total,
      "expenses": expenses.map((expense) => expense.toJson()).toList(),
    };
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
    return {
      "item": item,
      "amount": amount,
    };
  }
}

class Project {
  String? id;
  String? name;
  String? deadline;
  List<Team> team;

  Project(
      {required this.id,
      required this.name,
      required this.deadline,
      required this.team});

  factory Project.fromJson(Map<String, dynamic> json) {
    var teamJson = json['team'] as List;
    List<Team> team = teamJson.map((e) => Team.fromJson(e as Map<String, dynamic>)).toList();
    return Project(
        id: json["id"] as String?,
        name: json["name"] as String?,
        deadline: json["deadline"] as String?,
        team: team);
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": name,
      "deadline": deadline,
      "team": team.map((e) => e.toJson()).toList(),
    };
  }
}

class Team {
  String? employeeId;
  String? role;

  Team({required this.employeeId, required this.role});

  factory Team.fromJson(Map<String, dynamic> json) {
    return Team(employeeId: json["employeeId"], role: json["role"]);
  }

  Map<String, dynamic> toJson() {
    return {
      "employeeId": employeeId,
      "role": role,
    };
  }
}
