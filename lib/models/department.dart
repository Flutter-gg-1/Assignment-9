import 'package:assignment9/models/check_null.dart';
import 'package:assignment9/models/engineering.dart';
import 'package:assignment9/models/marketing.dart';

class Department {
  final Engineering engineering;
  final Marketing marketing;

  Department({required this.engineering, required this.marketing});

  factory Department.fromJson(Map<String, dynamic> json) {
    return Department(
        engineering: Engineering.fromJson(checkNull(json['engineering'], 'engineering')),
        marketing: Marketing.fromJson(checkNull(json['marketing'], 'marketing')));
  }

  Map<String,dynamic> toJson() {
    return {
      'engineering' : engineering.toJson(),
      'marketing' : marketing.toJson()
    };
  }
}
