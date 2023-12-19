


// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_applicationl3/pages/checkout.dart';
import 'package:flutter_applicationl3/provider/cart.dart';
import 'package:provider/provider.dart';


class Productsandprice  extends StatelessWidget {
  const Productsandprice ({super.key});

  @override
  Widget build(BuildContext context) {
     final cartt = Provider.of<Cart>(context);
    return Row(
              children: [
                Stack(
                  children: [
                    Positioned(
                      bottom: 20,
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(211, 64, 255, 193),
                            shape: BoxShape.circle),
                        child: Text(
                          "${cartt.selectedProducts.length}",
                          style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 0, 0, 0)),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CheckOut(),
                      ),
                    );
                      },
                      icon: Icon(
                        Icons.add_shopping_cart,
                      ),
                      color: Colors.white,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: Text(
                    "\$ ${cartt.price}",
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                ),
              ],

            );
         
         
  }
}