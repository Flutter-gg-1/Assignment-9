import 'dart:convert';
import 'company.dart';
import 'departments.dart';

class CompanyService {
  final Company company;
  Map<String, dynamic>? department;

  CompanyService(this.company, {required this.department});

  // Factory constructor to create a CompanyData instance from a JSON map
  factory CompanyService.fromJson(Map<String, dynamic> json) {
    return CompanyService(
      departments: (json['departments'] as Map<String, dynamic>).map(
        (key, value) => MapEntry(key, Departments.fromJson(value)),
      ),
    );
  }
  String getMarketingEmployees() {
    var marketingEmployees = company.departments['marketing']?.employees ?? [];
    return json.encode(marketingEmployees.map((e) => e.toJson()).toList());
  }
}
