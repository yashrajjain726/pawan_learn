import 'package:flutter/material.dart';

void main() {
  //WidgetApp //MaterialApp //CupertinoApp
  runApp(
    MaterialApp(
      home: HomePage(),
      theme: ThemeData(primarySwatch: Colors.red),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Awesome App"),
      ),
      body: Center(
        child: Container(
            padding: EdgeInsets.all(8.0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(10.0),
              gradient: LinearGradient(
                colors: [Colors.pink, Colors.yellow],
              ),
              boxShadow: [
                BoxShadow(color: Colors.grey, blurRadius: 5.0),
              ],
            ),
            width: 100,
            height: 100,
            child: Text(
              "I am a Box",
              style: TextStyle(color: Colors.white),
            )),
      ),
    );
  }
}
