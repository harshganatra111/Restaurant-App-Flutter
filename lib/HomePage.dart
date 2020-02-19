import 'package:flutter/material.dart';
import 'main.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Restaurant App'),
        backgroundColor: Colors.amber,
      ),
      drawer: Drawer(
        child: ListView(
          children:  <Widget>[
            
            UserAccountsDrawerHeader(
              accountName: Text('Harsh'),
              accountEmail: Text("harsh@gprprolab.in"),
              decoration: BoxDecoration(
                color: Colors.amber,
              ),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.lightBlue,
                child: Text('HG'),
              ),
            ),
            ListTile(
              leading: Icon(Icons.menu),
              title: Text('Menu'),
              onTap: () => Navigator.of(context).pushNamed('/menu'),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.fastfood),
              title: Text('Orders'),
              onTap: () => Navigator.of(context).pushNamed('/orders'),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
              onTap: () => Navigator.of(context).pushNamed('/profile'),

            ),
            Divider(),
          ],
        ),
      ),
      body: Center(
          child: SingleChildScrollView(
          
            child: Column(
              children: <Widget>[
                Padding(padding: EdgeInsets.all(10.0)),
                Image.asset("images/download.jpg"),
                Padding(padding: EdgeInsets.all(10.0)),
                Image.asset("images/images.jpg"),
                Padding(padding: EdgeInsets.all(10.0)),
                Image.asset("images/download-1.jpg"),
                Padding(padding: EdgeInsets.all(10.0)),
                Image.asset("images/download-2.jpg"),
                Padding(padding: EdgeInsets.all(10.0)),
                Image.asset("images/download-3.jpg"),
                Padding(padding: EdgeInsets.all(10.0)),
                Image.asset("images/download-4.jpg"),
                Padding(padding: EdgeInsets.all(10.0)),
                Image.asset("images/download-5.jpg"),
                Padding(padding: EdgeInsets.all(10.0)),
                Image.asset("images/download-6.jpg"),
                Padding(padding: EdgeInsets.all(10.0),)
              ],
            ),
          
        ),
      ),
    );
  }
}