// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lighttheme(BuildContext context) => ThemeData(
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: AppBarTheme(
          color: Color.fromARGB(255, 48, 65, 91),
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.amberAccent),
          titleTextStyle: TextStyle(
              color: Colors.amber, fontSize: 20, fontWeight: FontWeight.bold)
          //textTheme: Theme.of(context).textTheme
          ),
      primarySwatch: Colors.red,
      fontFamily: GoogleFonts.lato().fontFamily,
      primaryTextTheme: GoogleFonts.latoTextTheme());

  static ThemeData darktheme(BuildContext context) => ThemeData(
      brightness: Brightness.dark,
      appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 20)
          //textTheme: Theme.of(context).textTheme
          ),
      primarySwatch: Colors.indigo,
      fontFamily: GoogleFonts.lato().fontFamily,
      primaryTextTheme: GoogleFonts.latoTextTheme());
}
