import 'Models/companyData.dart';
import 'data_set.dart';

void main() {
  CompanyData companyData = CompanyData.fromJson(data);

  print("-------------get employees---------------");
  print(companyData.department.marketing.getEmployees());
  print("----------------------------");

  print("#####################################");

  print("--------------get expenses--------------");
  print(companyData.getExpenses());
  print("----------------------------");

  print("#####################################");

  print("--------------get all data--------------");
  try{}catch(exeption){}
  print(companyData.toJson());
  print("----------------------------");
}
