import 'package:assignment_9/model/project.dart'; // Importing the Project model from the specified package

import 'contact.dart'; // Importing the Contact model from the local directory

// Class representing an Employee
class Employee {
  String id;
  String name;
  String role;
  Contact contact;
  List<Project>? projects; // List of projects the employee is involved in, can be null

  // Constructor for the Employee class
  Employee({
    required this.id,
    required this.name,
    required this.role,
    required this.contact,
    this.projects, // Optional parameter for employee projects
  });

  // Factory constructor to create an Employee instance from a JSON map
  factory Employee.fromJson(Map<String, dynamic> json) {
    return Employee(
      id: json['id'],
      name: json['name'],
      role: json['role'],
      contact: Contact.fromJson(json['contact']),
      // Creating a list of Project instances from JSON if projects exist
      projects: json['projects'] != null
          ? (json['projects'] as List).map((i) => Project.fromJson(i)).toList()
          : null, // Setting projects to null if not present in JSON
    );
  }

  // Method to convert an Employee instance to a JSON map
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'role': role,
      'contact': contact.toJson(),
      'projects': projects?.map((e) => e.toJson()).toList(),
    };
  }
}