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
      body: Container(
        color: Colors.teal,
        height: 500,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(8.0),
              height: 100,
              width: 100,
              color: Colors.red,
              alignment: Alignment.center,
            ),
            Container(
              padding: EdgeInsets.all(8.0),
              height: 100,
              width: 100,
              color: Colors.yellow,
              alignment: Alignment.center,
            ),
            Container(
              padding: EdgeInsets.all(8.0),
              height: 100,
              width: 100,
              color: Colors.green,
              alignment: Alignment.center,
            ),
          ],
        ),
      ),
    );
  }
}
