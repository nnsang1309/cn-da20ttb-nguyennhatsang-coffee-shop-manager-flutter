import 'package:app/data/mock_data_provider.dart';
import 'package:app/models/product.dart';

class ProductRepository {
  final dataProvider = MockDataProvider();

  Future<List<Product>> fetchAllProducts() {
    return dataProvider.fetchProducts();
  }
}
