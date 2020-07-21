import 'package:flutter/material.dart';

import 'login_page.dart';
import 'style.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String _title = 'Aplikasi Mobile P2M';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        primaryColor: Colors.blue[900],
        appBarTheme: AppBarTheme(
          textTheme: TextTheme(headline6: AppBarTextStyle),
        )
      ),
      home: LoginPage(),
    );
  }
}


