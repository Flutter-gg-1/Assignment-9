


class ContactModel{
  String email;
  String phone;



  ContactModel({

    required this.email,
    required this.phone,
  });


  factory ContactModel.fromJson(Map<String,dynamic> json){


    return ContactModel(email: json["email"], phone: json["phone"]);



  }


  Map<String,dynamic> toJson(){

    return{
      "email" : email,
      "phone" : phone

    };
  }




}