import 'engineering.dart';
import 'marketing.dart';

class Department {
  final Engineering? engineering;
  final Marketing? marketing;

  Department({required this.engineering, required this.marketing});

  factory Department.fromJson(Map<String, dynamic> json) {
    return Department(
      engineering: Engineering.fromJson(json['departments']['engineering']),
      marketing: Marketing.fromJson(json['departments']['marketing']),
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
