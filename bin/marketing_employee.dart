import 'package:assignment9/company.dart';

Iterable<Map<String, dynamic>> gitJson(Company company) {
  var marketingEmployee = company.departments.marketing.employeeMarketing
      .map((display) => display.toJson());

  return marketingEmployee;
}
