class Department {
  Engineering engineering;
  Marketing marketing;

  Department({required this.engineering, required this.marketing});

  factory Department.fromJson(Map<String, dynamic> json) => Department(
      engineering: Engineering.fromJson(json['engineering']),
      marketing: Marketing.fromJson(json['marketing']));
  Map<String, dynamic> toJson() =>
      {'engineering': engineering.toJson(), 'marketing': marketing.toJson()};
}

class Engineering {
  // Properties
  List<Employee> employees;

  // Constructor
  Engineering({required this.employees});

  // Methods
  factory Engineering.fromJson(Map<String, dynamic> json) => Engineering(
      employees: List<Employee>.from(
          json['employees'].map((employee) => Employee.fromJson(employee))));
  Map<String, dynamic> toJson() =>
      {'employees': employees.map((employee) => employee.toJson()).toList()};
}

// ذهب الكثير وبقي الكثير
class Marketing {
  // Properties
  List<Employee> employees;
  Budget budget;

  // Constructor
  Marketing({required this.employees, required this.budget});

  // Methods
  factory Marketing.fromJson(Map<String, dynamic> json) => Marketing(
      budget: Budget.fromJson(json['budget']),
      employees: List<Employee>.from(
          json['employees'].map((employee) => Employee.fromJson(employee))));
  Map<String, dynamic> toJson() => {
        'budget': budget.toJson(),
        'employees': employees.map((employee) => employee.toJson()).toList()
      };
}

class Employee {
  // Properties
  String id;
  String name;
  String role;
  Contact contact;
  List<Project> projects;

  // Constructor
  Employee(
      {required this.id,
      required this.name,
      required this.role,
      required this.contact,
      required this.projects});

  // Methods
  factory Employee.fromJson(Map<String, dynamic> json) => Employee(
      id: json['id'],
      name: json['name'],
      role: json['role'],
      contact: Contact.fromJson(json['contact']),
      projects: List<Project>.from(
          json['projects'].map((project) => Project.fromJson(project))));
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'role': role,
        'contact': contact.toJson(),
        'projects': projects.map((project) => project.toJson()).toList()
      };
}

class Contact {
  // Properties
  String email;
  String phone;

  // Constructor
  Contact({required this.email, required this.phone});

  // Methods
  factory Contact.fromJson(Map<String, dynamic> json) =>
      Contact(email: json['email'], phone: json['phone']);
  Map<String, dynamic> toJson() => {'email': email, 'phone': phone};
}

class Project {
  // Properties
  String projectId;
  String projectName;
  String roleInProject;

  // Constructor
  Project(
      {required this.projectId,
      required this.projectName,
      required this.roleInProject});

  // Methods
  factory Project.fromJson(Map<String, dynamic> json) => Project(
      projectId: json['projectId'],
      projectName: json['projectName'],
      roleInProject: json['roleInProject']);
  Map<String, dynamic> toJson() => {
        'projectId': projectId,
        'projectName': projectName,
        'roleInProject': roleInProject
      };
}

class Budget {
  int total;
  List<Expenses> expenses;

  Budget({required this.total, required this.expenses});

  factory Budget.fromJson(Map<String, dynamic> json) => Budget(
      total: json['total'],
      expenses: List<Expenses>.from(
          json['expenses'].map((expenses) => Expenses.fromJson(expenses))));
  Map<String, dynamic> toJson() => {
        'total': total,
        'expenses': expenses.map((expenses) => expenses.toJson()).toList()
      };
}

class Expenses {
  String item;
  int amount;

  Expenses({required this.item, required this.amount});

  factory Expenses.fromJson(Map<String, dynamic> json) => Expenses(
        item: json['item'],
        amount: json['amount'] as int,
      );
  Map<String, dynamic> toJson() => {'item': item, 'amount': amount};
}

class ProjectABC {
  String id;
  String name;
  String deadline;
  List<Team> team;

  ProjectABC(
      {required this.id,
      required this.name,
      required this.deadline,
      required this.team});

  factory ProjectABC.fromJson(Map<String, dynamic> json) => ProjectABC(
      deadline: json['deadline'],
      name: json['name'],
      id: json['id'],
      team: List<Team>.from(json['team'].map((team) => Team.fromJson(team))));
  Map<String, dynamic> toJson() => {
        'deadline': deadline,
        'name': name,
        'id': id,
        'team': team.map((team) => team.toJson()).toList()
      };
}

class Team {
  String employeeId;
  String role;

  Team({required this.employeeId, required this.role});

  factory Team.fromJson(Map<String, dynamic> json) =>
      Team(employeeId: json['employeeId'], role: json['role']);
  Map<String, dynamic> toJson() => {'employeeId': employeeId, 'role': role};
}
