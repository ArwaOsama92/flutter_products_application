import 'package:flutter/material.dart';

const DecorationTextField = InputDecoration(
   
    enabledBorder:
        OutlineInputBorder(borderSide: BorderSide.none),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color.fromARGB(255, 118, 116, 116))),
    // fillColor:const Color.fromARGB(255, 198, 196, 196) ,
    filled: true,
    contentPadding: EdgeInsets.all(8));
