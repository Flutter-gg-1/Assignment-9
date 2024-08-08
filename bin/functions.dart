import 'data/data_set.dart';
import 'model/company_data_model.dart';
import 'package:ansicolor/ansicolor.dart';

final AnsiPen greenPen = AnsiPen()..green();
final AnsiPen bluePen = AnsiPen()..blue();
final AnsiPen yalowPen = AnsiPen()..yellow();
final AnsiPen magentapen = AnsiPen()..magenta();
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
  
    print(bluePen("id: ${employee.id}"));
    print(bluePen("name: ${employee.name}"));
    print(bluePen("role: ${employee.role}"));
    print(greenPen("contact info :"));
    print(bluePen("email: ${employee.contact?.email}"));
    print(bluePen("phone: ${employee.contact?.phone}"));
    print(greenPen("project info :"));
    for (var element in employee.projects!) {
      print(bluePen("projectId : ${element.projectId}"));
      print(bluePen("projectName : ${element.projectName}"));
      print(bluePen("roleInProject : ${element.roleInProject}"));
    }
     print(magentapen(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"));
   
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
    print(bluePen("item : ${expense.item}"));
    print(bluePen("amount : ${expense.amount}"));
     print(magentapen(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"));
    print("");
  }


  // Exrercise 5 

  static void checkNullValues({required String value,required String title}){
    // print(value);
    if(value.toLowerCase() == "null"){
      throw FormatException(yalowPen("there is error with $title"));
    }
  }
}