import 'package:flutter/material.dart';
import 'package:flutter_applicationl3/model/item.dart';

class Cart with ChangeNotifier {
  // create new properties & methods
  List selectedProducts = [];

  double price = 0;

  add(Item product) {
    selectedProducts.add(product);

    price += product.price.round();
    notifyListeners();
  }

  delete(Item product){

    selectedProducts.remove(product);
    price -= product.price.round();
      notifyListeners();
  }

// use "notifyListeners();" at the end of every method
}
//get itemcount{
//return selectedproducts.length } we can use  itemcount  instesd of selectedproducts.length