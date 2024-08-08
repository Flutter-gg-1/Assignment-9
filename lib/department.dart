import 'marketing.dart';
import 'engineering.dart';

class DepartmentsCompany {
  final Engineering engineering;
  final Marketing marketing;

  DepartmentsCompany({required this.engineering, required this.marketing});
  factory DepartmentsCompany.fromJson(Map<String, dynamic> json) {
    return DepartmentsCompany(
        engineering: Engineering.fromJson(json['engineering']),
        marketing: Marketing.fromJson(json['marketing']));
  }
  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {};
    map["engineering"] = engineering.toJson();
    map["marketing"] = marketing.toJson();
    return map;
  }
  //Marketing
}
