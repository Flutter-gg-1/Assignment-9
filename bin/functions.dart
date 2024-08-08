import 'data/data_set.dart';
import 'model/company_data_model.dart';

class Functions{
  static AllData allData = AllData.fromJson(companyData);



//  Exrercise 3 
  static List<Employee> marketingEmployees(){
    List <Employee> allEmployees = [];

    for (var element in allData.department!.marketing!.employees!) {
      allEmployees.add(element);
    }
    return allEmployees;
  }

  static void printEmployeeInfo(Employee employee){
    print("id: ${employee.id}");
    print("name: ${employee.name}");
    print("role: ${employee.role}");
    print("contact info :");
    print("email: ${employee.contact?.email}");
    print("phone: ${employee.contact?.phone}");
    print("project info :");
    for (var element in employee.projects!) {
      print("projectId : ${element.projectId}");
      print("projectName : ${element.projectName}");
      print("roleInProject : ${element.roleInProject}");
    }
    print("");
  }

  // Exrercise 4 
  static List <Expense> displayTheExpenses(){
     List <Expense> expenses = [];
    for (var element in allData.department!.marketing!.budget!.expenses!) {
      expenses.add(element);
    }
    return expenses;
  }

  static void printExpenseInfo(Expense expense){
    print("item : ${expense.item}");
    print("amount : ${expense.amount}");
    print("");
  }


  // Exrercise 5 

  static void checkNullValues({required String value,required String title}){
    // print(value);
    if(value.toLowerCase() == "null"){
      throw FormatException("there is error with $title");
    }
  }
}