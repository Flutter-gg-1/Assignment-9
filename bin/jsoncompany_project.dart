import 'package:assignment9/company.dart';

Map<String, dynamic> gitJsonCompanyProject(Company company) {
  var marketingEmployee = company.projectCompany.projectA.toJson();

  gitJsonCompanyProjectB(company);
  return marketingEmployee;
}

gitJsonCompanyProjectB(Company company) {
  var marketingEmployee = company.projectCompany.projectB.toJson();
  print(marketingEmployee);
  gitJsonCompanyProjectC(company);
}

gitJsonCompanyProjectC(Company company) {
  var marketingEmployee = company.projectCompany.projectC.toJson();
  print(marketingEmployee);
  gitJsonCompanyProjectD(company);
}

gitJsonCompanyProjectD(Company company) {
  var marketingEmployee = company.projectCompany.projectD.toJson();
  print(marketingEmployee);
}
