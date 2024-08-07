import 'department/engineering.dart';
import 'companyData.dart';
import 'department/marketing.dart';
import 'department/department.dart';
import '../bin/department/employees.dart';
import 'projects/projectD.dart';
void main(List<String> arguments) {
  List a = [];
  a.add(companyData);

  for (var element in a) {
     ProjectD b = ProjectD.fromJason(element['projects']['projectC']) ;
    print(b.toJason());
  }
}
