import 'engineering.dart';
import 'marketing.dart';

class Department {
  Engineering engineering;
  Marketing marketing;

  Department({required this.engineering, required this.marketing});

  factory Department.fromJson(Map<String, dynamic> json) {
    return Department(
        engineering: Engineering.fromJson(json['engineering']),
        marketing: Marketing.fromJson(json['marketing']));
  }

  Map<String, dynamic> toJson() {
    return {
      'engineering': engineering.toJson(),
      'marketing': marketing.toJson()
    };
  }
}
