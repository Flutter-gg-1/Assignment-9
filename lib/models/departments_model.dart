


import 'package:asg9/models/engineering_model.dart';
import 'package:asg9/models/marketing_model.dart';

class DepartmentsModel{

  EngineeringModel engineeringModel;

  MarketingModel marketingModel;



  DepartmentsModel({

    required this.engineeringModel,
    required this.marketingModel,

  });



  factory DepartmentsModel.fromJson(Map<String, dynamic> json) {


    return  DepartmentsModel(engineeringModel: EngineeringModel.fromJson(json["engineering"]), marketingModel: MarketingModel.fromJson(json["marketing"]));


  }



   Map<String, dynamic> toJson() {



    return{

      "engineering" : engineeringModel.toJson(),
      "marketing" : marketingModel.toJson(),

    };

   }

}