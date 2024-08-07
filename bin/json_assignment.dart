import 'company_data.dart';
import 'models/department.dart';

void main(List<String> arguments) {
  Company company = Company.fromJson(companyData);

  print(company.department.toJson());
}
