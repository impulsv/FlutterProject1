// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lighttheme(BuildContext context) => ThemeData(
      scaffoldBackgroundColor: Color.fromARGB(248, 255, 255, 255),
      appBarTheme: AppBarTheme(
          color: Color.fromARGB(255, 50, 150, 110),
          elevation: 0.0,
          iconTheme: IconThemeData(color: Color.fromARGB(255, 255, 255, 255)),
          titleTextStyle: TextStyle(
              color: Color.fromARGB(248, 255, 253, 253),
              fontSize: 20,
              fontWeight: FontWeight.bold)
          //textTheme: Theme.of(context).textTheme
          ),
      primarySwatch: Colors.red,
      fontFamily: GoogleFonts.poppins().fontFamily,
      primaryTextTheme: GoogleFonts.poppinsTextTheme());

  static ThemeData darktheme(BuildContext context) => ThemeData(
      brightness: Brightness.dark,
      appBarTheme: AppBarTheme(
          color: Color.fromARGB(255, 255, 255, 255),
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 20)
          //textTheme: Theme.of(context).textTheme
          ),
      primarySwatch: Colors.indigo,
      fontFamily: GoogleFonts.lato().fontFamily,
      primaryTextTheme: GoogleFonts.latoTextTheme());

  static Color creamColor = Color(0xfff5f5f5);
  static Color darkBlueColor = Color(0xff403b58);
}
