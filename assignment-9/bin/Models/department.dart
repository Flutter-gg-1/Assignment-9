import 'engineering.dart';
// import 'marketing.dart';

class Department {
  final Engineering engineering;

  Department({required this.engineering});

  factory Department.fromJson(Map<String, dynamic> json) {
    return Department(engineering: Engineering.fromJson(json["engineering"]));
  }

  Map<String, dynamic> toJson() {
    return {
      "engineering": engineering.toJson()
    };
  }
}
