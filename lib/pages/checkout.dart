import 'package:ecomm/appbar.dart';
import 'package:ecomm/provider/cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';

class Checkout extends StatelessWidget {
  const Checkout({super.key});

  @override
  Widget build(BuildContext context) {
    final cartt = Provider.of<cart>(context);

    return Scaffold(
      appBar: AppBar(
        actions: [Appbar()],
      ),
      body: SizedBox(
        height: 500,
        child: ListView.builder(
            itemCount: cartt.products.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                  leading: Image.asset(cartt.products[index].imageUrl),
                  subtitle: Text(
                    "${cartt.products[index].price.toString()}",
                    style: TextStyle(color: Colors.green, fontSize: 15),
                  ),
                  trailing: IconButton(
                      onPressed: () {
                        cartt.delete(cartt.products[index]);
                      },
                      icon: Icon(Icons.delete)),
                  title: Text("${cartt.products[index].name.toString()}"));
            }),
      ),
    );
  }
}
