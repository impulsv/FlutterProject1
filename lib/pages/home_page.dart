// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../models/catalog.dart';
import '../utilities/routes.dart';
import '../widgets/drawer.dart';
import '../widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;

  final String name = "User";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    var catalogueJson =
        await rootBundle.loadString("assets/files/catalog.json");
  }

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(1, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Binance"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView.builder(
              itemCount: dummyList.length,
              itemBuilder: (context, index) {
                return ItemWidget(
                  item: dummyList[index],
                );
              },
            ),
          ),
          // Row(
          //   children: [
          //     ElevatedButton(
          //       // ignore: sort_child_properties_last
          //       child: const Text('Login'),
          //       style: TextButton.styleFrom(minimumSize: Size(150, 40)),
          //       onPressed: () {
          //         // Navigator.pushNamed(const MyRoutes.loginroute);
          //         Navigator.pushNamed(context, MyRoutes.loginroute);
          //       },
          //     ),
          //     ElevatedButton(
          //       // ignore: sort_child_properties_last
          //       child: const Text('Login'),
          //       style: TextButton.styleFrom(minimumSize: Size(150, 40)),
          //       onPressed: () {
          //         // Navigator.pushNamed(const MyRoutes.loginroute);
          //         Navigator.pushNamed(context, MyRoutes.loginroute);
          //       },
          //     ),
          //   ],
          // )
        ],
      ),
      drawer: MyDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 246, 241, 243),
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
            icon: const Icon(Icons.wallet),
            label: '',
          ),
        ],
        selectedItemColor: Color.fromARGB(237, 12, 12, 12),
      ),
    );
  }
}
