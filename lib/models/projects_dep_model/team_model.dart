



import 'package:asg9/helper/check_null.dart';

class TeamModel{
  String employeeId;
  String role;




  TeamModel({
    required this.employeeId,
    required this.role
  });


  Map<String, dynamic> toJson() {


    return{

      "employeeId": employeeId,
      "role": role


    };

  }


  factory TeamModel.fromJson(Map<String, dynamic> json) {

    return TeamModel(employeeId: checkNull(data: json["employeeId"], title: "employeeId"), role:  checkNull(data: json["role"], title: "role"));
  }
}