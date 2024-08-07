class Contact {
  String? email;
  String? phone;
  Contact({this.email, this.phone});

  factory Contact.fromJson(Map<String, dynamic> json) {
    return Contact(email: json['email'], phone: json['phone']);
  }
}
