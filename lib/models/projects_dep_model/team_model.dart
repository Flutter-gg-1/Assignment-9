



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

    return TeamModel(employeeId: json["employeeId"], role: json["role"]);
  }
}