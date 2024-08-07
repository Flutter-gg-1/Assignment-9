import 'package:assignment9/dataset.dart'; // dataset
import 'package:assignment9/models/check_null.dart'; // function to check null values
import 'package:assignment9/models/expenses_by_department.dart'; // function to get expenses by department
import 'package:assignment9/models/get_marketing_employees.dart'; // function to get employees in marketing department

void main(List<String> arguments) {
  print('Assignemnt 9 : Company data');
  print('-' * 40);
  print('Dataset has ${companyData.length} keys');
  print('Which are : ${companyData.keys}');
  print('-' * 40);
  print(">>>>>>>>>>>>> Q U E S T I O N S <<<<<<<<<<<<<");
  print('Question 3 : ');
  print(getMarketingEmployees());
  print('^'*50);

  print('Question 4 : ');
  print(expensesByDepartment());
  print('^'*50);

  print('Question 5 : ');
  print(checkNull(companyData['departments'], 'departments'));
  print('^'*50);
}