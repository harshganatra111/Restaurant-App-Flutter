import 'package:flutter/material.dart';
class Orders extends StatefulWidget {
  @override
  _OrdersState createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Orders'),
        backgroundColor: Colors.amber,
      ),
      body: Container(
        child: Column(children: <Widget>[
          ListTile(
        leading: Icon(Icons.fastfood),
        title: Text('Order No. 12323'),
        trailing: Text('₹550'),
      ),
        ListTile(
        leading: Icon(Icons.fastfood),
        title: Text('Order No. 1233453'),
        trailing: Text('₹670'),
      ),
        ListTile(
        leading: Icon(Icons.fastfood),
        title: Text('Order No. 2387'),
        trailing: Text('₹990'),
      ),
        ListTile(
        leading: Icon(Icons.fastfood),
        title: Text('Order No. 95844'),
        trailing: Text('₹1200'),
      ),
        ],),
      )
    );
  }
}