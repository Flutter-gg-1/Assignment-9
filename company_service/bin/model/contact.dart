class Contact {
  String email;
  String phone;

  Contact({required String this.email, required String this.phone});
  factory Contact.fromJson(Map<String, dynamic> json) {
    return Contact(email: json['email'], phone: json['phone']);
  }
  Map<String, dynamic>toJson() {
    return {
      'email': email,
      'phone': phone,
    };
  }

}
