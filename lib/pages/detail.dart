import 'package:ecomm/Model.dart';
import 'package:ecomm/appbar.dart';
import 'package:ecomm/provider/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class detail extends StatelessWidget {
  BaseModel product;
  detail({required this.product});
  // const detail({super.key});

  @override
  Widget build(BuildContext context) {
  final cartt = Provider.of<cart>(context);
    return Scaffold(
      appBar: AppBar(
actions: [
Appbar()
],        // 
      ),
      body: Container(
        child: Column(
          children: [Image.asset(product.imageUrl)],
        ),
      ),
    );
  }
}
