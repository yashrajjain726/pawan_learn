import 'package:flutter/material.dart';
import 'package:pawan_learn/pages/home_page.dart';
import 'package:pawan_learn/pages/home_page_with_fb.dart';
import 'package:pawan_learn/pages/home_page_with_sb.dart';
import 'package:pawan_learn/pages/login_page.dart';
import 'package:pawan_learn/utils/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future main() async {
  //WidgetApp //MaterialApp //CupertinoApp
  WidgetsFlutterBinding.ensureInitialized();
  Constants.prefs = await SharedPreferences.getInstance();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Constants.prefs.getBool("Logged In") == true
          ? HomePageSB()
          : LoginPage(),
      theme: ThemeData(primarySwatch: Colors.red),
      debugShowCheckedModeBanner: false,
      routes: {
        LoginPage.routeName: (context) => LoginPage(),
        HomePage.routeName: (context) => HomePage(),
      },
    );
  }
}
