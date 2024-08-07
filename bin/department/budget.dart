class Budget {
  final int total;
  final List<dynamic>? expenses;

  Budget({required this.total, required this.expenses});

  factory Budget.fromJson(Map<String, dynamic> json) {
    return Budget(
      total: json['total'] ,
      expenses: json['expenses'] ,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'total': total,
      'expenses': expenses,
    };
  }
}
