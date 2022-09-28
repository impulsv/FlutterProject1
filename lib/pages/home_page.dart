// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/widgets/drawer.dart';

import '../widgets/item_widget.dart';

// ignore: use_key_in_widget_constructors
class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 1;
  final String name = "User";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 246, 241, 243),
        // ignore: prefer_const_literals_to_create_immutables
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.graphic_eq,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.network(
              "https://t4.ftcdn.net/jpg/02/92/57/01/360_F_292570125_NWNCG0Cl6s97Ze2kM6wrDf6IBlTr9nHM.jpg",
              height: 60,
              width: 60,
            ),
            label: '',
            backgroundColor: Colors.yellow,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet),
            label: '',
          ),
        ],
        selectedItemColor: Color.fromARGB(237, 12, 12, 12),
      ),
      appBar: AppBar(
        title: Text("Binance"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: CatalogueModel.items.length,
        itemBuilder: (context, index) {
          return ItemWidget(
            item: CatalogueModel.items[index],
          );
        }, 
      ),
      drawer: MyDrawer(),
    );
  }
}
