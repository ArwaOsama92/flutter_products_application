// ignore_for_file: prefer_const_constructors, must_be_immutable, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_applicationl3/shared/appbar.dart';
import 'package:flutter_applicationl3/shared/colors.dart';
import 'package:flutter_applicationl3/model/item.dart';

class Details extends StatefulWidget {
  Item Product;
  Details({required this.Product});




  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  bool IsShowMore = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: [
            Productsandprice()
          ],
          title: Text(
            "Home",
            style: TextStyle(
                color: Colors.white, fontSize: 23, fontWeight: FontWeight.bold),
          ),
          backgroundColor: appbarGreen),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(widget.Product.imgPath),
            SizedBox(height: 15),
            Text(
              "\$. ${widget.Product.price}",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: EdgeInsets.all(4),
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    "New",
                    style: TextStyle(fontSize: 16),
                  ),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 235, 98, 64),
                  ),
                ),
                SizedBox(width: 15),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.amber, size: 26),
                    Icon(Icons.star, color: Colors.amber, size: 26),
                    Icon(Icons.star, color: Colors.amber, size: 26),
                    Icon(Icons.star, color: Colors.amber, size: 26),
                    Icon(Icons.star, color: Colors.amber, size: 26),
                  ],
                ),
                SizedBox(width: 40),
                Row(
                  children: [
                    Icon(Icons.edit_location,
                        size: 23, color: Color.fromARGB(168, 3, 65, 27)),
                    SizedBox(width: 3),
                    Text(
                      widget.Product.location,
                      style: TextStyle(fontSize: 14),
                    )
                  ],
                )
              ],
            ),
            SizedBox(height: 22),
            SizedBox(
                width: double.infinity,
                child: Text("Details :",
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.start)),
            SizedBox(height: 16),
            Text(
                "Women's Wallet Pink Pu Combo Bag Decorated With Letter Patches & Pendants, Elegant & Minimalist Style Shoulder Bag, Handbag, Purse With Adjustable Strap, Multi-functional, Large Capacity & Zipper",
                style: TextStyle(fontSize: 15),
                maxLines: IsShowMore ? 2 : null,
                overflow: TextOverflow.fade),
            TextButton(
                onPressed: () {
                  setState(() {
                    IsShowMore = !IsShowMore;
                  });
                },
                child: Text(IsShowMore ? "Show more" : "Show less",
                    style: TextStyle(fontSize: 18)))
          ],
        ),
      ),
    );
  }
}
