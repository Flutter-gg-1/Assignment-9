import '../json/data.dart';
import '../model/department/budget/expense.dart';
import '../model/department/department.dart';
import '../model/department/employee/employee.dart';
import '../model/projects/portfolio.dart';

class Home {
  // Department Variables
  Department department = Department.fromJson(companyData['departments']);
  Portfolio portfolio = Portfolio.fromJson(companyData['projects']);
  late List<Employee> mktgEmployees;
  late List<Expense>? engExpenses;
  late List<Expense>? mktgExpenses;

  Home() {
    mktgEmployees = department.marketing.employees ?? [];
    engExpenses = department.engineering.budget?.expenses;
    mktgExpenses = department.marketing.budget?.expenses;
  }

  void showMktgEmployes() => print('''
Marketing Employees:
${mktgEmployees.map((employee) => employee.toJson())}
''');

  bool valueIsNull(field) {
    var result = false;
    try {
      if (field == null) {
        result = true;
        throw Exception('Null Value');
      }
    } catch (_) {
      print('WARNING: Null Value caught\n');
    }
    return result;
  }

  void showExpenses() {
    print('''
Engineering Expenses:
${valueIsNull(engExpenses) ? 'Exception caught for null value' : engExpenses?.map((expense) => expense.toJson())}
Marketing Expenses:
${valueIsNull(mktgExpenses) ? 'Exception caught for null value' : mktgExpenses?.map((expense) => expense.toJson())}
''');
  }
}
