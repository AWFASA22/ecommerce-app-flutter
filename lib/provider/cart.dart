import 'package:ecomm/Model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class cart with ChangeNotifier {
  String Myname = "awfa";
  double price = 0.0;
  List products = [];

  add(BaseModel product) {
    products.add(product);
    price += product.price;
    notifyListeners();
  }
  delete(BaseModel product) {
    products.remove(product);
    price -= product.price;
    notifyListeners();
  }
}


