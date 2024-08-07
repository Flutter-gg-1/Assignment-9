


import 'package:asg9/helper/check_null.dart';

class ContactModel{
  String email;
  String phone;



  ContactModel({

    required this.email,
    required this.phone,
  });


  factory ContactModel.fromJson(Map<String,dynamic> json){


    return ContactModel(email:checkNull(data: json["email"], title: "email") , phone:checkNull(data:json["phone"] ,title: "phone" ) );



  }


  Map<String,dynamic> toJson(){

    return{
      "email" : email,
      "phone" : phone

    };
  }




}