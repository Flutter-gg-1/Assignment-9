import './myData.dart';
import './model/department.dart';
import './model/budget.dart';
import 'display_all.dart';

void main() {
  var allEngEmployee = Engineering.fromJson(companyData);
  var allMRKEmployee = Maketing.fromJson(companyData);
  var theBudget = Budget.fromJson(companyData);

  displayAllEngEmployee(allEngEmployee.emp);
  displayAllMRKEmployee(allMRKEmployee.emp);
  displayBudget(theBudget.exp, theBudget.total);
}
