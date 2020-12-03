import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
              accountName: Text("Yashraj Jain"),
              accountEmail: Text("yashrajjain726@gmail.com"),
              currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1480812494744-bfed1358a9b7?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80"))),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Username"),
            subtitle: Text("Software Developer"),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Email Id"),
            subtitle: Text("samplemail@gmail.com"),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Age"),
            subtitle: Text("23"),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Privacy and Settings"),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("About Us"),
          ),
        ],
      ),
    );
  }
}
