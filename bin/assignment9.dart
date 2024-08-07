import 'package:assignment9/dataset.dart'; // dataset
import 'package:assignment9/models/contact.dart';
import 'package:assignment9/models/project.dart'; // contact class

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
  print('-' * 40);

  print("Testing project object");
  Project project = Project.fromJson(
      companyData['departments']['engineering']['employees'][1]['projects'][0]);
  print(project.toJson());
  print('-' * 40);
}
