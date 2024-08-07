



import 'package:asg9/models/employees_model.dart';

class EngineeringModel{

  List <EmployeesModel> employeesModel;



  EngineeringModel({required this.employeesModel});


  factory EngineeringModel.fromJson(Map<String, dynamic> json) {


    List<EmployeesModel> tempList = [];
    for (var val in json["employees"]) {
      tempList.add(EmployeesModel.fromJson(val));
    }


    return EngineeringModel(employeesModel: tempList);



  }


  Map<String, dynamic> toJson() {
    
    List<Map<String, dynamic>> lisTemp = [];

    for(var val in employeesModel ){

      lisTemp.add(val.toJson());
    }


    return {

      "employees" : lisTemp

    };


    


  }

}