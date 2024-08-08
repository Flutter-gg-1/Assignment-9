checkNull({required String value, required String title}) {
  if (value.toLowerCase() == "null") {
    throw FormatException("Ther is error with $title");
  }
}