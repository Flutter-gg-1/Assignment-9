import 'employee.dart';
import 'budget.dart';

class Marketing {
  final List<Employee> employees;
  final Budget budget;
  Marketing({required this.employees, required this.budget});

  void toPrint() {
    for (Employee employee in employees) {
      employee.toPrint();
    }

    budget.toPrint();
  }
}
