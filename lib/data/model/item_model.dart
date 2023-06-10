class ItemModel {
  ItemModel({
    required this.expandedValue,
    required this.headerValue,
    this.isExpanded = false,
  });

  String expandedValue;
  String headerValue;
  bool isExpanded;
}

// Fungsi utilitas untuk menghasilkan contoh data item ekspansi
List<ItemModel> generateItems(int numberOfItems) {
  return List<ItemModel>.generate(numberOfItems, (int index) {
    return ItemModel(
      headerValue: 'Item $index',
      expandedValue: 'This is item number $index',
    );
  });
}
