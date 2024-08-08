import 'package:assignment_9/data/company_data_json.dart';
import 'package:assignment_9/functions/functions.dart';
import 'package:assignment_9/model/company_data.dart';


void main() {

  // companyDataJson from data/company_data_json file
  CompanyData companyData = CompanyData.fromJson(companyDataJson);

  // Display all marketing employees
  print(displayMarketingEmployees(companyData));

  // Display the expenses of budget of each department
  print(displayBudgetExpenses(companyData));

  // Check for null values
  try {
    checkNullValues(companyData);
    print('No null values found');
  } catch (e) {
    print(e);
  }
}