// ignore_for_file: prefer_const_constructors, sort_child_properties_last
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/item_widget.dart';
import '../models/catalog.dart';
import '../utilities/routes.dart';
import '../widgets/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(1, (index) => CatalogModel.items[0]);
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    //final dummyList = List.generate(1, (index) => CatalogModel.items[index]);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Binance"),
        centerTitle: true,
      ),
      body: Column(
        children: [
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
          Flexible(
            child: GridTile(
              // scrollDirection: Axis.vertical,
              // shrinkWrap: true,
              // children: const <Widget>[
              child: SingleChildScrollView(
                child: Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Card(
                      child: ListTile(
                        leading: FlutterLogo(size: 72.0),
                        title: Text('four-line ListTile'),
                        subtitle: Text(
                            'A sufficiently long subtitle warrants three lines.'),
                        trailing: Icon(Icons.more_vert),
                        isThreeLine: true,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
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
            ),
          ),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
