import 'package:ecomm/pages/checkout.dart';
import 'package:ecomm/provider/cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';

class Appbar extends StatelessWidget {
  const Appbar({super.key});

  @override
  Widget build(BuildContext context) {
    final cartt = Provider.of<cart>(context);

    return Row(
      children: [
        Stack(
          children: [
            Text("${cartt.products.length}"),
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Checkout()));
                },
                icon: Icon(Icons.add_card_rounded))
          ],
        )
      ],
    );
  }
}
