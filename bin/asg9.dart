


import 'package:asg9/helper/dep_budget.dart';
import 'package:asg9/json.dart';
import 'package:asg9/models/company.dart';

void main(){



try{

   CompanyModel companyModel = CompanyModel.fromJson(companyData);


  print(companyModel.toJson());

  // print(showDepBudget(companyModel));

  // companyModel.departmentsModel.marketingModel.displayMarketingEmp();



} catch(err){
  print(err.toString());

}
 
}