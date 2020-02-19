
import 'package:flutter/material.dart';

import 'ProductModel.dart';


class ProductScreen extends StatelessWidget {
  final ValueSetter<ProductModel> _valueSetter;

  ProductScreen(this._valueSetter);

  List<ProductModel> products = [
    ProductModel("Pizza", 300),
    ProductModel("Burger", 100),
    ProductModel("Pasta", 150),
    ProductModel("Dosa", 100),
    ProductModel("Noodles", 80),
    ProductModel("Paneer chilly", 200),
    ProductModel("Chicken chilly", 200),
    ProductModel("Veg Meal", 500),
    ProductModel("Chicken Meal", 700),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index){
          return ListTile(
            title: Text(products[index].name),
            trailing: Text("\₹${products[index].price}", style: TextStyle(color: Colors.redAccent, fontSize: 20, fontWeight: FontWeight.w500),),
            onTap: (){
              _valueSetter(products[index]);
            },
          );
        },
        separatorBuilder: (context, index){
          return Divider();
        },
        itemCount: products.length
    );
  }
}
