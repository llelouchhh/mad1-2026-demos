class ExpensesItem {
  final String id = DateTime.now.toString();
  late String description;
  late double price;
  late DateTime? date;

  ExpensesItem({required this.description, required this.price, required this.date});
}