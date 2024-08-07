import 'engineering.dart';
import 'companyData.dart';

void main(List<String> arguments) {
  
   List a = [];
  a.add(companyData);
  for (var element in a) {
    Engineering b = Engineering.fromJson(element);
    print(b.toJason());
  }
  
}
