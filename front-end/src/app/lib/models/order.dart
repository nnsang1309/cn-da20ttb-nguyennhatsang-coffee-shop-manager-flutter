import 'package:app/models/product.dart';

class Order {
  int id;
  int userId;
  List<Product> products;
  double total;

  Order(
      {required this.id,
      required this.userId,
      required this.products,
      required this.total});
}
