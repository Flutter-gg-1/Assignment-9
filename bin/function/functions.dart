import 'dart:io';
import '../core/all_file.dart';

//display all marketing employees
void displayMarketingEmployees() {
  print('_____#### Marketing employees ####______');
  print(companyData['departments']['marketing']['employees']);
}

//display the expenses of budget of each department
void displayExpenses() {
  print('_____#### Expenses ####______');
  print(companyData['departments']['engineering']['budget']);
  print(companyData['departments']['marketing']['budget']);
}

// check null values of companyData.

void checkNull() {
  companyData.forEach((key, value) {
    if (value == null) {
      throw FormatException('Null value found in $key');
    } else {
      print('No null value found in $key');
    }
  });
}

void showPrompt() {
  print('\nDo you want to continue? or exit?');
  print('Enter 1 to continue and 2 to exit\n');
  int enterNumber = int.parse(stdin.readLineSync()!);
  switch (enterNumber) {
    case 1:
      mainDashboard();
      break;
    case 2:
      exit(0);
  }
}
