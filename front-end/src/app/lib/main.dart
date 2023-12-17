import 'package:app/screen/table_list.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login(),
    );
  }
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  void _login() {
    // Thực hiện xác thực tại đây, ví dụ: kiểm tra tên người dùng và mật khẩu
    String username = _usernameController.text;
    String password = _passwordController.text;

    // Giả sử xác thực thành công nếu username và password không rỗng
    if (username.isNotEmpty && password.isNotEmpty) {
      // Chuyển sang màn hình thứ hai khi đăng nhập thành công
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => TableOrder()),
      );
    } else {
      // Hiển thị thông báo lỗi nếu đăng nhập không thành công
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Đăng nhập không thành công'),
            content: Text('Vui lòng kiểm tra lại tên người dùng và mật khẩu.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Đóng'),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Đăng nhập'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: 'Tên đăng nhập',
              ),
            ),
            SizedBox(height: 10.0),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: 'Mật khẩu',
              ),
              obscureText: true,
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: _login,
              child: Text('Đăng nhập'),
            ),
            SizedBox(height: 10.0),
            TextButton(
              onPressed: () {
                // Điều hướng đến trang đăng ký
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Register()));
              },
              child: Text('Đăng ký'),
            ),
          ],
        ),
      ),
    );
  }
}

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Đăng ký'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                labelText: 'Tên đăng nhập',
              ),
            ),
            SizedBox(height: 10.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Mật khẩu',
              ),
              obscureText: true,
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Xử lý đăng ký ở đây
              },
              child: Text('Đăng ký'),
            ),
            SizedBox(height: 10.0),
            TextButton(
              onPressed: () {
                // Điều hướng quay lại trang đăng nhập
                Navigator.pop(context);
              },
              child: Text('Quay lại đăng nhập'),
            ),
          ],
        ),
      ),
    );
  }
}
