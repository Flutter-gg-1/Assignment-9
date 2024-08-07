class Valdite{
  static checkNull({required String title,required String value}){
  if (value.toLowerCase()=='null') {
    throw FormatException('There is error with $title');
  }
  return value;
}
}