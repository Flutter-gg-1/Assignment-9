// function to avoid null values in dataset
checkNull(dynamic value, String keyName) {
  if(value.toString()=='null') {
    throw Exception("ERROR : There is a problem in key $keyName");
  }
  return value;
}