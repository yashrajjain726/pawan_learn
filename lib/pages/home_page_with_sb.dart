import 'package:flutter/material.dart';
import 'package:pawan_learn/pages/login_page.dart';
import 'package:pawan_learn/utils/constants.dart';
import '../widgets/drawer.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePageSB extends StatefulWidget {
  static const String routeName = "/homefb";
  @override
  _HomePageSBState createState() => _HomePageSBState();
}

class _HomePageSBState extends State<HomePageSB> {
  // var myText = "Change My Name";
  // TextEditingController _nameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future fetchData() async {
    final url = "https://jsonplaceholder.typicode.com/photos";
    var response = await http.get(url);
    var data = jsonDecode(response.body);
    return data;
  }

  Stream<List<String>> getStream() {
    var data = Stream<List<String>>.fromIterable(
        [List<String>.generate(20, (index) => "Item $index")]);
    return data;
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {
              Constants.prefs.setBool("Logged In", false);
              Navigator.pushReplacementNamed(context, LoginPage.routeName);
            },
          ),
        ],
        title: Text("Awesome App"),
      ),
      body: StreamBuilder(
        stream: getStream(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              return Center(
                child: Text("Fetch Something"),
              );
            case ConnectionState.active:
            case ConnectionState.waiting:
              return Center(
                child: CircularProgressIndicator(),
              );
            case ConnectionState.done:
              if (snapshot.hasError) {
                return Center(
                  child: Text("Some Error Occured"),
                );
              }
              return ListView.builder(
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(snapshot.data[index]),
                    );
                  },
                  itemCount: snapshot.data.length);
          }
        },
      ),
      drawer: MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // setState(() {});
        },
        child: Icon(Icons.send),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
