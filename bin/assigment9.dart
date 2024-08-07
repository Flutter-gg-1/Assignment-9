import 'engineering.dart';
import 'companyData.dart';
import 'marketing.dart';
void main(List<String> arguments) {
  
   List a = [];
  a.add(companyData);
  for (var element in a) {
    Marketing b = Marketing.fromJson(element);
    print(b.toJason());
  }
  
  
}
