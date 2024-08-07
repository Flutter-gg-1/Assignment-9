import 'department/engineering.dart';
import 'companyData.dart';
import 'department/marketing.dart';
import 'department/department.dart';
import '../bin/department/employees.dart';

void main(List<String> arguments) {
  List a = [];
  a.add(companyData);

  for (var element in a) {
    Department b = Department.fromJson(element);
    print(b.toJson());
  }
}
