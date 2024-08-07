





import 'package:asg9/models/departments_model.dart';
import 'package:asg9/models/projects_model.dart';

class CompanyModel{

  DepartmentsModel departmentsModel;
  // ProjectsModel projectsModel;



  CompanyModel({

    required this.departmentsModel
  });



  factory CompanyModel.fromJson(Map<String, dynamic> json) {

    return CompanyModel(departmentsModel: DepartmentsModel.fromJson(json["departments"]));
    
  }



   Map<String, dynamic> toJson() {


    return {

      "departments" : departmentsModel.toJson()
    };


   }

    





}




















