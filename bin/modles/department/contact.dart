class Contact {
   String? email;
   String? phone;

  Contact({required this.email, required this.phone});

  factory Contact.fromJson(Map<String, dynamic> jason) {
    return Contact(email: jason['email'], phone: jason['phone']);
  }

  toJason() {
    Map<String, dynamic>;
    return {
      "email": email,
      "phone": phone,
    };
  }
}
