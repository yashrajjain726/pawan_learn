import 'package:flutter/material.dart';
import 'package:pawan_learn/pages/home_page.dart';
import 'package:pawan_learn/pages/login_page.dart';

void main() {
  //WidgetApp //MaterialApp //CupertinoApp
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      theme: ThemeData(primarySwatch: Colors.red),
      debugShowCheckedModeBanner: false,
      routes: {
        LoginPage.routeName: (context) => LoginPage(),
        HomePage.routeName: (context) => HomePage(),
      },
    );
  }
}
