





import 'package:asg9/models/company.dart';

Map<String , dynamic> showDepBudget(CompanyModel company){


  return{
    "engineering" : company.departmentsModel.engineeringModel.budgetModel?.toJson(),
    "marketing" : company.departmentsModel.marketingModel.budgetModel.toJson()
  };


  

}