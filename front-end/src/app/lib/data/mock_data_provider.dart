import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart'; // Import Flutter material.dart
import 'package:path_provider/path_provider.dart';
import 'package:app/models/product.dart';

class MockDataProvider {
  Future<List<Product>> fetchProducts() async {
    // Ensure Flutter is initialized before accessing Flutter-specific functionality
    WidgetsFlutterBinding.ensureInitialized();

    // Now you can safely use Flutter-specific functionality

    // Lấy đường dẫn đến thư mục chứa file
    final directory = await getApplicationDocumentsDirectory();

    // Tạo đường dẫn tới file json
    final file = File('${directory.path}/lib/assets/data/products.json');

    // Đọc nội dung file dưới dạng string
    String jsonString = await file.readAsString();

    // Deserialize json sang Dart objects
    return (jsonDecode(jsonString) as List)
        .map((e) => Product.fromJson(e))
        .toList();
  }
}
