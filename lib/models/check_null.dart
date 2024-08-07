// function to avoid null values in dataset
checkNull(dynamic value, String keyName) {
  if(value.toString().toLowerCase()=='null') {
    throw FormatException("ERROR : There is no key $keyName");
  }
  return value;
}