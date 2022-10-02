// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/catalog.dart';
import '../utilities/routes.dart';
import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(2, (index) => CatalogModel.items[index]);
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 216, 213, 213),
      appBar: AppBar(
        title: Text("Binance"),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: CircleAvatar(
                      radius: 60.0,
                      backgroundImage: NetworkImage(
                          "https://preview.redd.it/myhugvlll7r91.png?width=640&crop=smart&auto=webp&s=f98eb3c4b72e51fdd9af4f59965d8569190fb856")),
                )
              ],
            ),
            Text(
              "Welcome to Binance",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromARGB(255, 28, 23, 23), fontSize: 20),
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 110)),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue[900],
                      //padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                      textStyle: TextStyle(fontSize: 20),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: Text('Login'),
                  onPressed: () {
                    Navigator.pushNamed(context, MyRoutes.loginroute);
                  },
                ),
                Padding(padding: EdgeInsets.only(left: 20)),
                ElevatedButton(
                  child: Text('Signup'),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      //padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                      textStyle: TextStyle(fontSize: 20),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {
                    Navigator.pushNamed(context, MyRoutes.constructionroute);
                  },
                ),
              ],
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: 1,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 40, bottom: 5),
                    child: SizedBox(
                      height: 60,
                      width: 60,
                      child: ListTile(
                          tileColor: Color.fromARGB(255, 50, 150, 110),
                          trailing: const Text(
                            "GFG",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          title: Text(
                            "How to deposit EUR & GBP",
                            style: TextStyle(color: Colors.white),
                          )),
                    ),
                  );
                }),
            Padding(
                padding: const EdgeInsets.all(16.0),
                child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 15,
                      crossAxisSpacing: 15),
                  itemBuilder: (context, index) {
                    final item = CatalogModel.items[index];
                    return Card(
                        elevation: 0.0,
                        color: Colors.transparent,
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: GridTile(
                          child: Image.network(item.image),
                          header: Container(
                            child: SizedBox(
                              height: 15,
                              width: 5,
                              child: Text(
                                item.name,
                                style: TextStyle(
                                    color: Color.fromARGB(221, 0, 0, 0)),
                              ),
                            ),
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(26, 0, 0, 0),
                            ),
                          ),
                          footer: Container(
                            child: Text(item.price.toString()),
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: Colors.blueGrey[600],
                            ),
                          ),
                        ));
                  },
                  itemCount: CatalogModel.items.length,
                )),
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 100,
        width: 100,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                topLeft: Radius.circular(30),
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50)),
            // ignore: prefer_const_literals_to_create_immutables
            boxShadow: [
              BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
            child: Padding(
              padding: EdgeInsets.zero,
              child: BottomNavigationBar(
                elevation: 20,
                backgroundColor: Color.fromARGB(255, 246, 241, 243),
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(
                      CupertinoIcons.bars,
                      size: 30,
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
                    icon: const Icon(Icons.wallet, size: 30),
                    label: '',
                  ),
                ],
                selectedItemColor: Color.fromARGB(237, 12, 12, 12),
              ),
            ),
          ),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
