import 'package:ecomm/appbar.dart';
import 'package:ecomm/pages/detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';

import '../Model.dart';
import '../provider/cart.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<cart>(builder: ((context, cartt, child) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("home"),
          actions: [
Appbar()           
          ],
        ),
        body: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
            itemCount: item.length,
            itemBuilder: (BuildContext ctx, index) {
              return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => detail(
                                  product: item[index],
                                )));
                  },
                  child: GridTile(
                    child: Image.network(item[index].imageUrl),
                    footer: GridTileBar(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "${item[index].price}",
                            style: TextStyle(color: Colors.red),
                          ),
                          IconButton(
                            onPressed: () {
                              cartt.add(item[index]);
                            },
                            icon: Icon(Icons.add),
                            color: Colors.amber,
                          )
                        ],
                      ),
                    ),
                  ));
            }),
      );
    }));
  }
}
