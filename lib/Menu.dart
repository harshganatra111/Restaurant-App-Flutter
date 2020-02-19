import 'package:flutter/material.dart';
import 'ProductModel.dart';
import 'ProductScreen.dart';
import 'CheckoutScreen.dart';
class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  PageController pageController;

  List<String> images =[
    'images/menu.jpg',
    'images/menu-1.jpg',
    'images/menu-2.jpg',
    'images/menu-3.jpg',
  ];
  @override
  void initState(){
    super.initState();
    pageController=PageController(initialPage: 1,viewportFraction: 0.8);

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CartApp()
    );
  }
  
  
}
class CartApp extends StatefulWidget {
  @override
  _CartAppState createState() => _CartAppState();
}

class _CartAppState extends State<CartApp> {
  List<ProductModel> cart = [];
  int sum = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text("Menu"),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(text: "Products",),
              Tab(text: "Checkout",),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ProductScreen((selectedProduct){
              setState(() {
                cart.add(selectedProduct);//update
                sum = 0;
                cart.forEach((item){
                  sum = sum + item.price;
                });
              });
            }),
            CheckoutScreen(cart, sum),
          ],
        ),
      ),
    );
  }
}
