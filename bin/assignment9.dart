import 'package:assignment9/dataset.dart'; // dataset
import 'package:assignment9/models/contact.dart'; // contact class

void main(List<String> arguments) {
  print('Assignemnt 9 : Company data');
  print('-' * 40);
  print('Dataset has ${companyData.length} keys');
  print('Which are : ${companyData.keys}');
  print('-' * 40);

  print("Testing contact object");
  Contact contact = Contact.fromJson(
      companyData['departments']['engineering']['employees'][0]['contact']);
  print(contact.toJson());
}
