// function to avoid null values in dataset
checkNull(dynamic value, String keyName) {
  if(value.toString()=='null') {
    throw Exception("ERROR : There is no key $keyName");
  }
  return value;
}