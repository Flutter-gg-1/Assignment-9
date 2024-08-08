import 'department/engineering.dart';
import 'companyData.dart';
import 'department/marketing.dart';
import 'department/expenses.dart';

void main(List<String> arguments) {
  List a = [];
  //function print markiting employee
  a.add(companyData);
  for (var element in a) {
    Marketing marketing =
        Marketing.fromJson(element['departments']['marketing']);
    print(marketing.toJson());
  }

//function to print Expenses and error handling
try {
    for (var element in a) {
      if (element == null) {
        Expenses expenses = Expenses.fromJson(element);
        print(expenses.toJason());
      }
    }
  } on FormatException catch (error) {
    print('FormatException: $error');
  }
}



