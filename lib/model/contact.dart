class Contact {
  // Fields to store email and phone information
  String email;
  String phone;

  // Constructor to initialize the Contact object with required email and phone
  Contact({required this.email, required this.phone});

  // Factory constructor to create a Contact object from a JSON map
  factory Contact.fromJson(Map<String, dynamic> json) {
    return Contact(
      email: json['email'], // Extract email from JSON
      phone: json['phone'], // Extract phone from JSON
    );
  }

  // Method to convert the Contact object to a JSON map
  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'phone': phone,
    };
  }
}