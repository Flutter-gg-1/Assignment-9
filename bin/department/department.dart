import 'engineering.dart';
import 'marketing.dart';

class Department {
  final Engineering? engineering;
  final Marketing? marketing;

  Department({required this.engineering, required this.marketing});

  factory Department.fromJson(Map<String, dynamic> json) {
    return Department(
         engineering: json['engineering'] != null
          ? Engineering.fromJson(json['engineering'])
          : null,
      marketing: json['marketing'] != null
          ? Marketing.fromJson(json['marketing'])
          : null,
    );
  }

  toJson() {
    Map<String, dynamic>;
    return {
      'engineering': engineering?.toJson(),
      'marketing': marketing?.toJson(),
    };
  }
}
