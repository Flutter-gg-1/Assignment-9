class AllData {
  final Department? department;
  final Projects? projects;

  AllData({this.department, this.projects});

  factory AllData.fromJson(Map<String, dynamic> json) {
    return AllData(
      department: Department.fromJson(json["departments"]),
      projects: Projects.fromJson(json["projects"]),
    );
  }

  Map<String, dynamic> toJson() {
    return {"department": department?.toJson(), "projects": projects?.toJson()};
  }
}

class Department {
  final Engineering? engineering;
  final Marketing? marketing;

  Department({this.engineering, this.marketing});

  factory Department.fromJson(Map<String, dynamic> json) {
    return Department(
        engineering: Engineering.fromJson(json["engineering"]),
        marketing: Marketing.fromJson(json["marketing"]));
  }

  Map<String, dynamic> toJson() {
    return {
      "engineering": engineering?.toJson(),
      "marketing": marketing?.toJson()
    };
  }
}

class Engineering {
  final List<Employee>? employees;

  Engineering({this.employees});

  factory Engineering.fromJson(Map<String, dynamic> json) {
    return Engineering(
      employees: (List.from(json["employees"]).map((element) {
        return Employee.fromJson(element);
      })).toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "employees": employees?.map((element) => element.toJson()).toList() //!
    };
  }
}

class Employee {
  final String? id;
  final String? name;
  final String? role;
  final Contact? contact;
  final List<Project>? projects;
  Employee({
    this.id,
    this.name,
    this.role,
    this.contact,
    this.projects,
  });

  factory Employee.fromJson(Map<String, dynamic> json) {
    return Employee(
      id: json["id"],
      name: json["name"],
      role: json["role"],
      projects: json['projects'] != null ? List.from(json["projects"])
          .map((element) => Project.fromJson(element))
          .toList() : null,
      
      
      contact: Contact.formJson(json["contact"]),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": name,
      "role": role,
      "projects": projects?.map((element) => element.toJson()).toList(), // !
      "contact": contact?.toJson(), // !
    };
  }
}

class Contact {
  final String? email;
  final String? phone;
  Contact({this.email, this.phone});

  factory Contact.formJson(Map<String, dynamic> json) {
    return Contact(email: json["email"], phone: json["phone"]);
  }

  Map<String, dynamic> toJson() {
    return {"email": email, "phone": phone};
  }
}

class Project {
  String? projectId;
  String? projectName;
  String? roleInProject;
  Project({
    this.projectId,
    this.projectName,
    this.roleInProject,
  });

  factory Project.fromJson(Map<String, dynamic> json) {
    return Project(
        projectId: json["projectId"],
        projectName: json["projectName"],
        roleInProject: json["roleInProject"]);
  }

  Map<String, dynamic> toJson() {
    return {
      "projectId": projectId,
      "projectName": projectName,
      "roleInProject": roleInProject
    };
  }
}

class Marketing {
  final List<Employee>? employees;
  final Budget? budget;
  Marketing({this.employees, this.budget});

  factory Marketing.fromJson(Map<String, dynamic> json) {
    return Marketing(
      budget: Budget.fromJson(json["budget"]),
      employees: List.from(json["employees"])
          .map((element) => Employee.fromJson(element))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "budget": budget?.toJson(),
      "employees": employees?.map((element) => element.toJson()).toList(),
    };
  }
}

class Budget {
  final int? total;
  final List<Expense>? expenses;

  Budget({this.total, this.expenses});

  factory Budget.fromJson(Map<String, dynamic> json) {
    return Budget(
      total: json["total"],
      expenses: List.from(json["expenses"])
          .map((element) => Expense.fromJson(element))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "total": total,
      "expenses": expenses?.map((element) => element.toJson()).toList(),
    };
  }
}

class Expense {
  final String? item;
  final int? amount;

  Expense({this.amount, this.item});

  factory Expense.fromJson(Map<String, dynamic> json) {
    return Expense(amount: json["amount"], item: json["item"]);
  }

  Map<String, dynamic> toJson() {
    return {"amount": amount, "item": item};
  }
}

class Projects {
  final ProjectA? projectA;
  final ProjectB? projectB;
  final ProjectC? projectC;
  final ProjectD? projectD;

  Projects({this.projectA, this.projectB, this.projectC, this.projectD});

  factory Projects.fromJson(Map<String, dynamic> json) {
    return Projects(
      projectA: ProjectA.formJson(json["projectA"]),
      projectB: ProjectB.formJson(json["projectB"]),
      projectC: ProjectC.formJson(json["projectC"]),
      projectD: ProjectD.formJson(json["projectD"]),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "projectA": projectA?.toJson(),
      "projectB": projectB?.toJson(),
      "projectC": projectC?.toJson(),
      "projectD": projectD?.toJson(),
    };
  }
}

class ProjectA {
  final String? id;
  final String? name;
  final String? deadline;
  final List<Team>? team;

  ProjectA({this.id, this.name, this.deadline, this.team});

  factory ProjectA.formJson(Map<String, dynamic> json) {
    return ProjectA(
      id: json["id"],
      name: json["name"],
      deadline: json["deadline"],
      team: List.from(json["team"])
          .map((element) => Team.fromJson(element))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": name,
      "deadline": deadline,
      "team": team?.map((element) => element.toJson()), // !
    };
  }
}

class ProjectB {
  final String? id;
  final String? name;
  final String? deadline;
  final List<Team>? team;

  ProjectB({this.id, this.name, this.deadline, this.team});

  factory ProjectB.formJson(Map<String, dynamic> json) {
    return ProjectB(
      id: json["id"],
      name: json["name"],
      deadline: json["deadline"],
      team: List.from(json["team"])
          .map((element) => Team.fromJson(element))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": name,
      "deadline": deadline,
      "team": team?.map((element) => element.toJson()), // !
    };
  }
}

class ProjectC {
  final String? id;
  final String? name;
  final String? deadline;
  final List<Team>? team;

  ProjectC({this.id, this.name, this.deadline, this.team});

  factory ProjectC.formJson(Map<String, dynamic> json) {
    return ProjectC(
      id: json["id"],
      name: json["name"],
      deadline: json["deadline"],
      team: List.from(json["team"])
          .map((element) => Team.fromJson(element))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": name,
      "deadline": deadline,
      "team": team?.map((element) => element.toJson()), // !
    };
  }
}

class ProjectD {
  final String? id;
  final String? name;
  final String? deadline;
  final List<Team>? team;

  ProjectD({this.id, this.name, this.deadline, this.team});

  factory ProjectD.formJson(Map<String, dynamic> json) {
    return ProjectD(
      id: json["id"],
      name: json["name"],
      deadline: json["deadline"],
      team: List.from(json["team"])
          .map((element) => Team.fromJson(element))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": name,
      "deadline": deadline,
      "team": team?.map((element) => element.toJson()), // !
    };
  }
}

class Team {
  final String? employeeId;
  final String? role;

  Team({this.employeeId, this.role});

  factory Team.fromJson(Map<String, dynamic> json) {
    return Team(employeeId: json["employeeId"], role: json["role"]);
  }

  Map<String, dynamic> toJson() {
    return {"employeeId": employeeId, "role": role};
  }
}
