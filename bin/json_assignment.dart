import 'company_data.dart';
import 'models/department.dart';

void main(List<String> arguments) {
  // displayMarkteing();
  displyExpense();
}

displayMarkteing() {
  Company c = Company.fromJson(companyData);
  print(c.department.marketing.toJson());
}

displyExpense() {
  Company c = Company.fromJson(companyData);
  c.department.budget.expenses.forEach((element) {
    element.toJson();
  });
}
