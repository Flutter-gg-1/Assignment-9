
import 'data.dart';
displayMarketingEmployee(){
  final marketing = companyData["departments"]["marketing"] as Map;
  final employee = marketing["employees"] as List<dynamic>;
  return employee.map((e) {
    return(e as Map);}).toList();
  }
