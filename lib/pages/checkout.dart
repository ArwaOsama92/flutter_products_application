// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_applicationl3/provider/cart.dart';
import 'package:flutter_applicationl3/shared/appbar.dart';
import 'package:flutter_applicationl3/shared/colors.dart';
import 'package:provider/provider.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({super.key});

  @override
  Widget build(BuildContext context) {
    final cartt = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Check Out Screen",
          style: TextStyle(
              color: Colors.white, fontSize: 23, fontWeight: FontWeight.bold),
        ),
        backgroundColor: appbarGreen,
        actions: [Productsandprice()],
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            child: SizedBox(
              height: 350,
              child: ListView.builder(
                  padding: const EdgeInsets.all(8),
                  itemCount: cartt.selectedProducts.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      child: ListTile(
                        subtitle: Text(
                            "${cartt.selectedProducts[index].price} - ${cartt.selectedProducts[index].location}"),
                        leading: CircleAvatar(
                          backgroundImage:
                              AssetImage(cartt.selectedProducts[index].imgPath),
                        ),
                        title: Text(cartt.selectedProducts[index].name),
                        trailing: IconButton(
                            onPressed: () {
                              cartt.delete(cartt.selectedProducts[index]);
                            },
                             icon: Icon(Icons.remove)),
                      ),
                    );
                  }),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(BTNpink),
              padding: MaterialStateProperty.all(EdgeInsets.all(12)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8))),
            ),
            child: Text(
              "Pay \$${cartt.price}",
              style: TextStyle(fontSize: 19,color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
