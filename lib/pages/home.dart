// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_applicationl3/pages/checkout.dart';
import 'package:flutter_applicationl3/shared/appbar.dart';
import 'package:flutter_applicationl3/shared/colors.dart';
import 'package:flutter_applicationl3/model/item.dart';
import 'package:flutter_applicationl3/pages/details_screen.dart';
import 'package:flutter_applicationl3/provider/cart.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final cartt = Provider.of<Cart>(context);
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 22),
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 5 / 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 33),
              itemCount: items.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Details(Product: items[index]),
                      ),
                    );
                  },
                  child: GridTile(
                    child: Stack(children: [
                      Positioned(
                        top: -3,
                        bottom: -9,
                        right: 0,
                        left: 0,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(55),
                            child: Image.asset(items[index].imgPath)),
                      ),
                    ]),
                    footer: GridTileBar(
                      // backgroundColor: Color.fromARGB(66, 73, 127, 110),
                      trailing: IconButton(
                          color: Color.fromARGB(255, 62, 94, 70),
                          onPressed: () {
                            cartt.add(items[index]);
                          },
                          icon: Icon(Icons.add)),

                      leading: Text(
                        "\$12.99",
                        style: TextStyle(fontSize: 15),
                      ),

                      title: Text(
                        " ",
                      ),
                    ),
                  ),
                );
              }),
        ),
        drawer: Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  UserAccountsDrawerHeader(
                    currentAccountPicture: CircleAvatar(
                      radius: 55,
                      backgroundImage: AssetImage("assets/images/backgr.jpg"),
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/assetimg.jpg"),
                          fit: BoxFit.cover),
                    ),
                    accountName: Text(
                      "Arwa Osama",
                      style:
                          TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                    accountEmail: Text("arwaqaddour@yahoo.com"),
                  ),
                  ListTile(
                    title: Text("Home"),
                    leading: Icon(Icons.home),
                    onTap: () {

                      Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Home(),
                      ),
                    );
                    },
                  ),
                  ListTile(
                    title: Text("My Products"),
                    leading: Icon(Icons.add_shopping_cart),
                    onTap: () {
                        
                        Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CheckOut(),
                      ),
                    );
                    },
                  ),
                  ListTile(
                    title: Text("About"),
                    leading: Icon(Icons.help_center),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text("Logout"),
                    leading: Icon(Icons.exit_to_app),
                    onTap: () {},
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: Text(
                  "Developed by Arwa © 2024",
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          actions: [
            Productsandprice()
          ],
          title: Text(
            "Home",
            style: TextStyle(
                color: Colors.white, fontSize: 23, fontWeight: FontWeight.bold),
          ),
          backgroundColor: appbarGreen,
        ),
      ),
    );
  }
}
