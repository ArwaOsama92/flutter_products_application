
import 'package:flutter/material.dart';
import 'package:flutter_applicationl3/pages/Register.dart';
import 'package:flutter_applicationl3/pages/checkout.dart';
import 'package:flutter_applicationl3/pages/details_screen.dart';
import 'package:flutter_applicationl3/pages/home.dart';
import 'package:flutter_applicationl3/pages/login.dart';
import 'package:flutter_applicationl3/provider/cart.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
       create: (context) {return Cart();},
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(useMaterial3: true),
        home: Home(),
      ),
    );
  }
}