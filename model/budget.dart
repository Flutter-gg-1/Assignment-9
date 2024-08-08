import 'item.dart';

class Budget {
  final int total;
  final List<Item> items;

  Budget({required this.total, required this.items});

  void toPrint() {
    print("************Budget********");
    print("total:$total");

    for (Item element in items) {
      element.toPrint();
    }
  }

  factory Budget.fromJson(Map json) {
    List<Item> items = [];
    json['expenses'].map((e) {
      items.add(Item.fromJson(e));
    }).toList();

    return Budget(total: json['total'], items: items);
  }
}
