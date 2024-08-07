import 'valdite.dart';

class Company {
  Engineering? engineering;
  Marketing? marketing;
  Map<String,Projects>? projects;

  Company({
    this.engineering,
    this.marketing,
    this.projects
  });

  factory Company.fromJson(Map<String, dynamic> json){
    return Company(
      engineering: json['departments']['engineering'] != null
          ? Engineering.fromJson(json['departments']['engineering'])
          : null,
      marketing: json['departments']['marketing'] != null
          ? Marketing.fromJson(json['departments']['marketing'])
          : null,
      projects: (json['projects'] as Map<String, dynamic>?)?.map(
        (key, value) => MapEntry(key, Projects.fromJson(value)),
      ),
    );
  }
  Map<String, dynamic> toJson(){
    return {
      'engineering': engineering?.toJson(),
      'marketing': marketing?.toJson(),
      'projects': projects?.map(
        (key, value) => MapEntry(key, value.toJson()),
      ),
    };
  }
}

class Engineering{
  List<Employees>? employees;

  Engineering({this.employees});

  factory Engineering.fromJson(Map<String, dynamic> json){

    return Engineering(
      employees: (json['employees'] as List<dynamic>?)
          ?.map((employee) => Employees.fromJson(employee))
          .toList(),
    );
  }

  Map<String, dynamic> toJson(){
    return {
      'employees': employees?.map((employee) => 
       employee.toJson()).toList(),
    };
  }
}

class Employees{
  String? id,name,role;
  Contact? contact;
  List<Employeeprojects>? projects;

  Employees({
    this.name,
    this.contact,
    this.id,
    this.projects,
    this.role
  });

  factory Employees.fromJson(Map<String, dynamic> json){
    return  Employees(
      id: Valdite.checkNull(title: 'employee id', value:  json['id']),
      name: Valdite.checkNull(title: 'employee name', value: json['name']),
      role: Valdite.checkNull(title: 'employee role', value: json['role']),
      contact: json['contact'] != null ? Contact.fromJson(json['contact']) : null,
      projects: (json['projects'] as List<dynamic>?)
          ?.map((project) => Employeeprojects.fromJson(project))
          .toList(),
    );
  }
  Map<String, dynamic> toJson(){
    return {
      'id': id,
      'name': name,
      'role': role,
      'contact': contact?.toJson(),
      'projects': projects?.map((project) => project.toJson()).toList(),
    };
  }
}


class Contact{
  String? email,phone;

  Contact({
    this.email,
    this.phone
  });

  factory Contact.fromJson(Map<String, dynamic> json){
    return Contact(
      email: Valdite.checkNull(title: 'contact email', value: json['email']),
      phone: Valdite.checkNull(title: 'contact phone', value: json['phone']),
    );
  }
  Map<String, dynamic> toJson(){
    return {
      'email': email,
      'phone': phone,
    };
  }
}


class Employeeprojects{
  checkNull({required String title,required String value}){
  if (value.toLowerCase()=='null') {
    throw FormatException('There is error with $title');
  }
  return value;
}
  String?projectId,projectName,roleInProject;

  Employeeprojects({
    this.projectId,
    this.projectName,
    this.roleInProject
  });

  factory Employeeprojects.fromJson(Map<String, dynamic> json){
    return Employeeprojects(
      projectId: Valdite.checkNull(title: 'employee project id', value: json['projectId']),
      projectName: Valdite.checkNull(title: 'employee project name', value: json['projectName']),
      roleInProject: Valdite.checkNull(title: 'employee role', value: json['roleInProject']),
    );
  }
  Map<String, dynamic> toJson(){
    return {
      'projectId': projectId,
      'projectName': projectName,
      'roleInProject': roleInProject,
    };
  }
}

class Marketing{
  List<Employees>? employees;
  Budget? budget;

  Marketing({
    this.budget,
    this.employees
  });

  factory Marketing.fromJson(Map<String, dynamic> json){
    return Marketing(
      employees: (json['employees'] as List<dynamic>?)
          ?.map((e) => Employees.fromJson(e))
          .toList(),
      budget: json['budget'] != null ? Budget.fromJson(json['budget']) : null,
    );
  }
  Map<String, dynamic> toJson(){
    return {
      'employees': employees?.map((e) => e.toJson()).toList(),
      'budget': budget?.toJson(),
    };
  }
}


class Budget{
  int? total;
  List<Expenses>? expenses;

  Budget({
    this.expenses,
    this.total
  });

  factory Budget.fromJson(Map<String, dynamic> json){
    return Budget(
      total: json['total'],
      expenses: (json['expenses'] as List<dynamic>?)
                ?.map((expense) => Expenses.fromJson(expense))
                .toList()
    );
  }
   Map<String, dynamic> toJson(){
    return {
      'total' : total,
      'expenses' : expenses?.map((expense) => 
                   expense.toJson()).toList() 
    };
  }
}


class Expenses{
  String? item;
  int? amount;
  
  Expenses({
    this.amount,
    this.item
  });

  factory Expenses.fromJson(Map<String, dynamic> json){
    return Expenses(
      item: Valdite.checkNull(title: 'item', value: json['item']),
      amount: json['amount'],     
    );
  }
  Map<String, dynamic> toJson(){
    return {
      'item': item,
      'amount': amount,
    };
  }
}


class Projects{
  String? id,name,deadline;
  List<Team>? team;

  Projects({
    this.deadline,
    this.id,
    this.name,
    this.team
  });

  factory Projects.fromJson(Map<String, dynamic> json){
    return Projects(
      deadline: Valdite.checkNull(title: 'deadline', value: json['deadline']),
      id: Valdite.checkNull(title: 'project id', value: json['id']),
      name: Valdite.checkNull(title: 'project name', value: json['name']),
      team: (json['team'] as List<dynamic>?)
          ?.map((team) => Team.fromJson(team))
          .toList(),
    );
  }

  Map<String, dynamic> toJson(){
    return  {
      'id': id,
      'name': name,
      'deadline': deadline,
      'team': team?.map((team) => team.toJson()).toList(),
    };
  }
}


class Team{
  String? employeeId,role;

  Team({
    this.employeeId,
    this.role
  });

  factory Team.fromJson(Map<String, dynamic> json){
    return Team(
     employeeId: Valdite.checkNull(title: 'team employee id', value: json['employeeId']),
     role: Valdite.checkNull(title: 'team employee', value: json['role']),
    );
  }
  Map<String, dynamic> toJson(){
    return {
      'employeeId': employeeId,
      'role': role,      
    };
  }
}
