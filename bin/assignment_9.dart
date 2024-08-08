import 'Models/company_data.dart';
import 'data_set.dart';

void main() {
  CompanyData? companyData;
  try {
    companyData = CompanyData.fromJson(data);
  } catch (e) {
    print("\n\nerror: $e");
  }

  print("\n\n-------------get employees---------------");
  try {
    print(companyData!.department.marketing.getEmployees());
  } catch (e) {
    print("error: $e");
  }
  print("----------------------------");

  print("\n\n#####################################\n\n");

  print("--------------get expenses--------------");

  try {
    print(companyData!.getExpenses());
  } catch (e) {
    print("error: $e");
  }
  print("----------------------------");

  print("\n\n#####################################\n\n");

  print("--------------get all data--------------");
  try {
    print(companyData!.toJson());
  } catch (e) {
    print("error: $e");
  }
  print("----------------------------");
}
