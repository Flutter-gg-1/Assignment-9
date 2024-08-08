class Item {
  final String item;
  final int amount;

  Item({required this.item, required this.amount});

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(item: json['item'], amount: json['amount']);
  }

  void toPrint() {
    print("**************Item***********");
    print("item:$item");
    print("amount:$amount");
  }
}
