checkValue({required dynamic value, required String title}) {
  if (value.toString() == 'null') {
    throw FormatException('Error: No value stored in $title');
  }
  return value;
}