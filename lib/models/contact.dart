import 'package:assignment9/models/check_null.dart'; // function to check null values

// class to represent contact of an employee
class Contact {
  final String email;
  final String phone;

  Contact({required this.email, required this.phone});

  factory Contact.fromJson(Map<String, String> json) {
    return Contact(
        email: checkNull(json['email'], 'email'),
        phone: checkNull(json['phone'], 'phone'));
  }

  Map<String, String> toJson() {
    return {'email': email, 'phone': phone};
  }
}