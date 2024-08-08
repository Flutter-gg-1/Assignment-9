import 'data.dart';
import './models/department.dart';

void main(){

  // Replace `myData` with your actual data
  Projects company = Projects.fromJson(myData);

  print(company.projectC.toJson());
}