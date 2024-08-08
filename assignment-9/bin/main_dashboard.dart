import 'dart:io';
import 'core/all_file.dart';
void mainDashboard(){
  print('\n1.to display all marketing employees');
  print('2.to display expenses of budget of each department');
  print('3.to check null values of companyData');
  print('\nEnter your choice');
  try {
    int choice = int.parse(stdin.readLineSync()!);
    switch (choice) {
      case 1:
        displayMarketingEmployees();
        break;
      case 2:
        displayExpenses();
        break;
      case 3:
        checkNull();
        break;
    }
  } on Exception catch (e) {
    print(e);
    showPrompt();
  }
}