import 'department.dart';

class CompanyData {
  // A map of department names to Department instances
  Map<String, Department> departments;

  // Constructor for the CompanyData class
  CompanyData({required this.departments});

  // Factory constructor to create a CompanyData instance from a JSON map
  factory CompanyData.fromJson(Map<String, dynamic> json) {
    return CompanyData(
      // Creating a map of Department instances from JSON
      departments: (json['departments'] as Map<String, dynamic>).map((k, v) =>
          MapEntry(k, Department.fromJson(v))),
    );
  }

  // Method to convert a CompanyData instance to a JSON map
  Map<String, dynamic> toJson() {
    return {
      // Converting each Department instance to JSON
      'departments': departments.map((k, v) => MapEntry(k, v.toJson())),
    };
  }
}