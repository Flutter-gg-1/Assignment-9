import 'data/data_set.dart';
import 'functions.dart';
import 'model/company_data_model.dart';

  
void main(List<String> arguments) {
  List<Employee> employees = Functions.marketingEmployees();
  List<Expense> expenses = Functions.displayTheExpenses();

//  Exrercise 3 
  for (var element in employees) {
    Functions.printEmployeeInfo(element);
  }

//  Exrercise 4 
  for (var element in expenses) {
    Functions.printExpenseInfo(element);
  }

  //  Exrercise 5 
  List<Employee> list = Functions.allData.department!.engineering!.employees!;
  for (var element in list) {
    Map map = element.toJson();
    map.forEach((key, value) {
      Functions.checkNullValues(
        title: map[key].toString(),
        value: map[key].toString(),
      );
    });
  }
}
