import 'departments.dart';

class Company {
  Map<String, Departments> departments;
  Company({required this.departments});
  factory Company.fromJson(Map<String, dynamic> json) {
    return Company(
      departments: (json['departments'] as Map<String, dynamic>).map(
        (key, value) => MapEntry(key, Departments.fromJson(value)),
      ),
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'departments':
          departments.map((key, value) => MapEntry(key, value.toJson()))
    };
  }
}
