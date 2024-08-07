class Contact {
  String? email;
  String? phone;
  Contact({this.email, this.phone});
  void toPrint() {
    print("Contact");
    print("email:$email");
    print("phone:$phone");
  }

  factory Contact.fromJson(Map<String, dynamic> json) {
    return Contact(email: json['email'], phone: json['phone']);
  }
}
