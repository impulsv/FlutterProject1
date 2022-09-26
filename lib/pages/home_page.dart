import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int days = 1;
  final String name = "V";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalogue App"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome $name, you are #$days !"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
