import 'model/department.dart';
import 'model/employees.dart';
import "company_data.dart";

void main() {


//print all engineering employees

 List engineeringEmployessList = companyData["departments"]["engineering"]["employees"];
 Employee engineeringEmployees;
 print("\n\n\n");
 print("------Engineering department employees info:------");
 for(int i = 0; i<engineeringEmployessList.length; i++){
   engineeringEmployees = Employee.fromJson(companyData["departments"]["engineering"]["employees"][i]);
   print(engineeringEmployees.toJson());
 }

//print all marketing employees
  print("\n\n\n");
  print("------Marketing department employees info:------");
 List marketingEmployessList = companyData["departments"]["marketing"]["employees"];
 Employee marketingEmployees;
 for(int i = 0; i<marketingEmployessList.length; i++){
   marketingEmployees = Employee.fromJson(companyData["departments"]["marketing"]["employees"][i]);
   print(marketingEmployees.toJson());
 }

}

