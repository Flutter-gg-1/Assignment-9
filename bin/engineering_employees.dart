
import 'data.dart';
import 'model/company.dart';

void main(List<String> arguments) {
  Company companyData = Company.fromJson(Data.companyData);


 List marketingEmployees = displayAllMarketingEmployees(companyData);
  print('Marketing Employees:');
  for (var employee in marketingEmployees) {
    print(employee);
  }

  Map departmentExpenses = displayExpenses(companyData);
  print('\nDepartment Expenses:');
  departmentExpenses.forEach((department, expenses) {
    print('$department:');
    for (var expense in expenses) {
      print(expense);
    }
  });
}

List displayAllMarketingEmployees(Company companyData) {
  return companyData.marketing?.employees?.map((e) => e.toJson()).toList() ?? [];
}

 displayExpenses(Company companyData) {
  Map expenses = {};
  if (companyData.marketing?.budget?.expenses != null) {
    expenses['marketing'] = companyData.marketing!.budget!.expenses!.map((e) => e.toJson()).toList();
  }
  return expenses;
}
