class Product {
  int id;
  String name;
  String category;
  double price;

  Product({
    required this.id,
    required this.name,
    required this.category,
    required this.price,
  });

  factory Product.fromJson(json) {
    return Product(
        id: json["id"],
        name: json["name"],
        category: json["category"],
        price: json["price"].toDouble());
  }
}
