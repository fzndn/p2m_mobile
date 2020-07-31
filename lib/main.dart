import 'package:flutter/material.dart';

import 'login.dart';
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
        ),
        textTheme: TextTheme(
          headline6: HeadTextStyle,
          bodyText2: BodyTextStyle,
        )
      ),
      /*
      routes: <String, WidgetBuilder> {
        '/' : (_) => new Login(),
        '/beranda': (_) => new Home(),
        '/profil' : (_) => new Profile(),
      },
       */
      home: Login()
    );
  }
}


