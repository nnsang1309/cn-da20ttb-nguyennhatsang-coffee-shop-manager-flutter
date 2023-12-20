// import 'package:app/screens/login.dart';
import 'package:flutter/material.dart';

import 'package:app/data/mock_data_provider.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Login(),
//     );
//   }
// }

void main() async {
  // Khởi tạo Mock Data Provider
  var provider = MockDataProvider();

  // Lấy danh sách products
  var products = await provider.fetchProducts();

  // Kiểm tra kết quả
  print(products.length);

  // // Chạy app Flutter
  // runApp(MyApp());

  // Gọi để khởi tạo Flutter binding
  WidgetsFlutterBinding.ensureInitialized();

  // Các dòng khởi tạo services, lấy instances,...

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Center(child: Text('My App')),
    ));
  }
}
