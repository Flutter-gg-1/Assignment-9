// function to check null values
checkNull(dynamic value, String keyName) {
  if(value.toString().toLowerCase()=='null') {
    throw FormatException("ERROR : There is no key $keyName");
  }
  return value;
}