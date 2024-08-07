import 'check_null_function.dart';

class Contact{
  final String email;
  final String phone;

  Contact({required this.email, required this.phone});

  factory Contact.fromJson(Map<String, dynamic> json){
    return Contact(email: checkNull(value: json["email"], title: "email"), phone: checkNull(value: json["phone"], title: "phone"));
  }

  Map<String, dynamic> toJson(){
    return{
      "email": email,
      "phone": phone
    };
  }
}