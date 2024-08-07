import 'department/engineering.dart';
import 'companyData.dart';
import 'department/marketing.dart';
import 'department/department.dart';
import '../bin/department/employees.dart';
import 'projects/projectD.dart';

void main(List<String> arguments) {
  List a = [];
  //function print markiting employee
  a.add(companyData);
  for (var element in a) {
    Marketing marketing =Marketing.fromJson(element['departments']['marketing']);
    print(marketing.toJson());
  }
}
