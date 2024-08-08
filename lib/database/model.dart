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
  List<Employee> employees;

  Engineering({required this.employees});

  factory Engineering.fromJson(Map<String, dynamic> json) => Engineering(
      employees: List<Employee>.from(
          json['employees'].map((employee) => Employee.fromJson(employee))));
  Map<String, dynamic> toJson() =>
      {'employees': employees.map((employee) => employee.toJson()).toList()};
}

class Marketing {
  List<Employee> employees;
  Budget budget;

  Marketing({required this.employees, required this.budget});

  factory Marketing.fromJson(Map<String, dynamic> json) => Marketing(
      employees: List<Employee>.from(
          json['employees'].map((employee) => Employee.fromJson(employee))),
      budget: Budget.fromJson(json['budget']));
  Map<String, dynamic> toJson() => {
        'employees': employees.map((employee) => employee.toJson()).toList(),
        'budget': budget.toJson(),
      };
}

class Employee {
  String id;
  String name;
  String role;
  Contact contact;
  List<Project> projects;

  Employee(
      {required this.id,
      required this.name,
      required this.role,
      required this.contact,
      required this.projects});

  factory Employee.fromJson(Map<String, dynamic> json) => Employee(
      id: json['id'],
      name: json['name'],
      role: json['role'],
      contact: Contact.fromJson(json['contact']),
      projects: json['projects'] != null
          ? List<Project>.from(
              json['projects'].map((project) => Project.fromJson(project)))
          : []);
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'role': role,
        'contact': contact.toJson(),
        'projects': projects.map((project) => project.toJson()).toList()
      };
}

class Contact {
  String email;
  String phone;

  Contact({required this.email, required this.phone});

  factory Contact.fromJson(Map<String, dynamic> json) =>
      Contact(email: json['email'], phone: json['phone']);
  Map<String, dynamic> toJson() => {'email': email, 'phone': phone};
}

class Project {
  String projectId;
  String projectName;
  String roleInProject;

  Project(
      {required this.projectId,
      required this.projectName,
      required this.roleInProject});

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
      id: json['id'],
      name: json['name'],
      deadline: json['deadline'],
      team: List<Team>.from(json['team'].map((team) => Team.fromJson(team))));
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'deadline': deadline,
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

class Departments {
  Engineering engineering;
  Marketing marketing;

  Departments({required this.engineering, required this.marketing});

  factory Departments.fromJson(Map<String, dynamic> json) => Departments(
        engineering: Engineering.fromJson(json['engineering']),
        marketing: Marketing.fromJson(json['marketing']),
      );

  Map<String, dynamic> toJson() => {
        'engineering': engineering.toJson(),
        'marketing': marketing.toJson(),
      };
}

Map<String, dynamic> getMarketingEmployees(Map<String, dynamic> companyData) {
  try {
    final marketingDepartment = companyData['departments']['marketing'];
    if (marketingDepartment == null) {
      throw FormatException('Marketing department data is missing');
    }

    final marketingEmployees = marketingDepartment['employees'];
    if (marketingEmployees == null) {
      throw FormatException('Marketing employees data is missing');
    }

    return {'employees': marketingEmployees};
  } catch (e) {
    throw FormatException('Error retrieving marketing employees: $e');
  }
}

Map<String, dynamic> getEngineeringEmployees(Map<String, dynamic> companyData) {
  try {
    final engineeringDepartment = companyData['departments']['engineering'];
    if (engineeringDepartment == null) {
      throw FormatException('Engineering department data is missing');
    }

    final engineeringEmployees = engineeringDepartment['employees'];
    if (engineeringEmployees == null) {
      throw FormatException('Engineering employees data is missing');
    }

    return {'employees': engineeringEmployees};
  } catch (e) {
    throw FormatException('Error retrieving engineering employees: $e');
  }
}

Map<String, dynamic> getEmployeeProjects(Map<String, dynamic> companyData) {
  try {
    final employees = [];
    final departments = companyData['departments'];
    if (departments != null) {
      final engineeringEmployees = departments['engineering']['employees'];
      final marketingEmployees = departments['marketing']['employees'];
      if (engineeringEmployees != null) {
        employees.addAll(engineeringEmployees);
      }
      if (marketingEmployees != null) {
        employees.addAll(marketingEmployees);
      }
    }

    return {
      'projects': employees.map((employee) {
        return {'id': employee['id'], 'projects': employee['projects'] ?? []};
      }).toList()
    };
  } catch (e) {
    throw FormatException('Error retrieving employee projects: $e');
  }
}

Map<String, dynamic> getBudgetExpenses(Map<String, dynamic> companyData) {
  try {
    final departments = companyData['departments'];
    if (departments == null) {
      throw FormatException('Departments data is missing');
    }

    final engineeringBudget = departments['engineering']['budget'];
    final marketingBudget = departments['marketing']['budget'];

    final expenses = {};
    if (engineeringBudget != null) {
      expenses['engineering'] = engineeringBudget['expenses'] ?? [];
    }
    if (marketingBudget != null) {
      expenses['marketing'] = marketingBudget['expenses'] ?? [];
    }

    return {'expenses': expenses};
  } catch (e) {
    throw FormatException('Error retrieving budget expenses: $e');
  }
}

void checkNull(Map<String, dynamic> companyData) {
  try {
    if (companyData['departments'] == null) {
      throw FormatException('Departments data is missing');
    }

    final departments = companyData['departments'];
    if (departments['engineering'] == null ||
        departments['marketing'] == null) {
      throw FormatException('Engineering or Marketing data is missing');
    }

    final engineeringEmployees = departments['engineering']['employees'];
    final marketingEmployees = departments['marketing']['employees'];
    if (engineeringEmployees == null || marketingEmployees == null) {
      throw FormatException(
          'Employees data is missing in one or more departments');
    }

    final marketingBudget = departments['marketing']['budget'];
    if (marketingBudget != null) {
      final expenses = marketingBudget['expenses'];
      if (expenses == null) {
        throw FormatException('Expenses data is missing in Marketing budget');
      }
    }
  } catch (e) {
    throw FormatException('Data validation error: $e');
  }
}
