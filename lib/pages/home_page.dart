// ignore_for_file: prefer_const_constructors, sort_child_properties_last
import 'package:flutter/material.dart';
<<<<<<< HEAD
import '../utilities/routes.dart';
import '../widgets/drawer.dart';

=======
import 'package:flutter/services.dart';

import '../models/catalog.dart';
import '../utilities/routes.dart';
import '../widgets/drawer.dart';
import '../widgets/item_widget.dart';

>>>>>>> 4290590a89d49f654e7909527720277d720bd05a
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
<<<<<<< HEAD
=======
  final int days = 30;

  final String name = "User";

>>>>>>> 4290590a89d49f654e7909527720277d720bd05a
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
<<<<<<< HEAD
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    //final dummyList = List.generate(1, (index) => CatalogModel.items[index]);
=======
    final dummyList = List.generate(1, (index) => CatalogModel.items[0]);
>>>>>>> 4290590a89d49f654e7909527720277d720bd05a
    return Scaffold(
      appBar: AppBar(
        title: const Text("Binance"),
        centerTitle: true,
      ),
      body: Column(
        children: [
<<<<<<< HEAD
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: <Widget>[
              CircleAvatar(
                radius: 60.0,
                backgroundImage: AssetImage('assets/images/add_data.png'),
              )
            ],
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 120)),
              ElevatedButton(
                child: Text('Login'),
                style: style,
                onPressed: () {
                  Navigator.pushNamed(context, MyRoutes.loginroute);
                },
              ),
              Padding(padding: EdgeInsets.only(left: 20)),
              ElevatedButton(
                child: Text('Signup'),
                style: style,
                onPressed: () {
                  Navigator.pushNamed(context, MyRoutes.loginroute);
                },
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: ListView(
                shrinkWrap: true,
                children: [
                  Card(
                    elevation: 0.0,
                    color: Colors.lightBlue[50],
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          leading: Icon(Icons.album),
                          title: Text('BITCOIN'),
                          subtitle: Text('BTC'),
                          trailing: Text(
                            "\$899.98",
                            style:
                                TextStyle(color: Colors.blueGrey, fontSize: 18),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            TextButton(
                              child: const Text('BUY'),
                              onPressed: () {/* ... */},
                            ),
                            const SizedBox(width: 8),
                            TextButton(
                              child: const Text('Sell'),
                              onPressed: () {/* ... */},
                            ),
                            const SizedBox(width: 8),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Card(
                    elevation: 0.0,
                    color: Colors.lightBlue[50],
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          leading: Icon(Icons.album),
                          title: Text('BNB'),
                          subtitle: Text('BNB'),
                          trailing: Text(
                            "\$233.98",
                            style:
                                TextStyle(color: Colors.blueGrey, fontSize: 18),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            TextButton(
                              child: const Text('BUY'),
                              onPressed: () {/* ... */},
                            ),
                            const SizedBox(width: 8),
                            TextButton(
                              child: const Text('Sell'),
                              onPressed: () {/* ... */},
                            ),
                            const SizedBox(width: 8),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Card(
                    elevation: 0.0,
                    color: Colors.lightBlue[50],
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          leading: Icon(Icons.album),
                          title: Text('Etherium'),
                          subtitle: Text('ETH'),
                          trailing: Text(
                            "\$1345.89",
                            style:
                                TextStyle(color: Colors.blueGrey, fontSize: 18),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            TextButton(
                              child: const Text('BUY'),
                              onPressed: () {/* ... */},
                            ),
                            const SizedBox(width: 8),
                            TextButton(
                              child: const Text('Sell'),
                              onPressed: () {/* ... */},
                            ),
                            const SizedBox(width: 8),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Card(
                    elevation: 0.0,
                    color: Colors.lightBlue[50],
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          leading: Icon(Icons.album),
                          title: Text('RIPPLE'),
                          subtitle: Text('XRP'),
                          trailing: Text(
                            "\$0.404200",
                            style:
                                TextStyle(color: Colors.blueGrey, fontSize: 18),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            TextButton(
                              child: const Text('BUY'),
                              onPressed: () {/* ... */},
                            ),
                            const SizedBox(width: 8),
                            TextButton(
                              child: const Text('Sell'),
                              onPressed: () {/* ... */},
                            ),
                            const SizedBox(width: 8),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
=======
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
>>>>>>> 4290590a89d49f654e7909527720277d720bd05a
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
