import '../models/company.dart';
import '../utils/data.dart';
void main(List<String> arguments) {
  Company company = Company.fromJson(companyData);

  print(company.toJson());
}

