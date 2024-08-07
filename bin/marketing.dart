class Marketing {
  final List<dynamic> employees;

  Marketing({required this.employees});

  factory Marketing.fromJson(Map<String, dynamic> jason) {
    return Marketing(
      employees: jason['departments']['marketing']['employees'],
    );
  }
  toJason() {
    Map<String, dynamic>;
    return {
   "employees":employees
    };
  }

}
