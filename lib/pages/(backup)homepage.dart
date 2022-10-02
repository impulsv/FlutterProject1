// ignore_for_file: prefer_const_constructors, sort_child_properties_last, use_key_in_widget_constructors, unnecessary_new
import 'package:flutter/material.dart';
import '../models/catalog.dart';
import '../utilities/routes.dart';
import '../widgets/drawer.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

List<String> data = [
  "https://preview.redd.it/myhugvlll7r91.png?width=640&crop=smart&auto=webp&s=f98eb3c4b72e51fdd9af4f59965d8569190fb856",
  "https://preview.redd.it/myhugvlll7r91.png?width=640&crop=smart&auto=webp&s=f98eb3c4b72e51fdd9af4f59965d8569190fb856",
  "https://preview.redd.it/myhugvlll7r91.png?width=640&crop=smart&auto=webp&s=f98eb3c4b72e51fdd9af4f59965d8569190fb856",
  "https://preview.redd.it/myhugvlll7r91.png?width=640&crop=smart&auto=webp&s=f98eb3c4b72e51fdd9af4f59965d8569190fb856",
  "abc",
];

class _HomePageState extends State<HomePage> {
  @override
  @override
  Widget build(BuildContext context) {
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
                  backgroundImage: NetworkImage(
                      "https://preview.redd.it/myhugvlll7r91.png?width=640&crop=smart&auto=webp&s=f98eb3c4b72e51fdd9af4f59965d8569190fb856"))
            ],
          ),

          Text(
            "Welcome to Binance",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255), fontSize: 20),
          ),

          

          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 110)),
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

          // Flexible(
          //   child: SingleChildScrollView(
          //     child: Column(
          //       children: <Widget>[
          //         Container(
          //           height: 300,
          //           color: Colors.white30,
          //           child: GridView.count(
          //             physics: ScrollPhysics(),
          //             crossAxisCount: 4,
          //             shrinkWrap: true,
          //             padding: EdgeInsets.all(8.0),
          //             children: <String>[
          //               'https://preview.redd.it/myhugvlll7r91.png?width=640&crop=smart&auto=webp&s=f98eb3c4b72e51fdd9af4f59965d8569190fb856'
          //                   'https://preview.redd.it/myhugvlll7r91.png?width=640&crop=smart&auto=webp&s=f98eb3c4b72e51fdd9af4f59965d8569190fb856'
          //             ].map((String url) {
          //               return GridTile(
          //                   child: Image.network(url, fit: BoxFit.cover));
          //             }).toList(),
          //           ),
          //         ),
          //         Container(
          //           height: 300,
          //           color: Colors.white30,
          //           child: GridView.builder(
          //             shrinkWrap: true,
          //             itemCount: data.length,
          //             gridDelegate:
          //                 new SliverGridDelegateWithFixedCrossAxisCount(
          //                     crossAxisCount: 2),
          //             itemBuilder: (BuildContext context, int index) {
          //               return new Card(
          //                 child: new GridTile(
          //                   //footer: new Text(data[index]),
          //                   child: Image.network(data[
          //                       index]), //just for testing, will fill with image later
          //                 ),
          //               );
          //             },
          //           ),
          //         )
          //       ],
          //     ),
          //   ),
          // ),

          // Flexible(
          //   child: GridTile(
          //     child: GestureDetector(
          //       onTap: () {},
          //       child: Image.network(
          //           "https://preview.redd.it/myhugvlll7r91.png?width=640&crop=smart&auto=webp&s=f98eb3c4b72e51fdd9af4f59965d8569190fb856",
          //           fit: BoxFit.cover),

          //     ),
          //     footer: GridTileBar(
          //       backgroundColor: Colors.blue[100],
          //       title: Text(
          //         "#family guy",
          //         textAlign: TextAlign.center,
          //       ),
          //       trailing: IconButton(
          //         icon: Icon(CupertinoIcons.bitcoin),
          //         onPressed: () {},
          //         color: Theme.of(context).primaryColor,
          //       ),
          //     ),
          //   ),

          // )

          // Flexible(
          //   child: SizedBox(
          //     //height: MediaQuery.of(context).size.height - 133,
          //     child: GridView(
          //       // scrollDirection: Axis.vertical,
          //       // shrinkWrap: true,
          //       // children: const <Widget>[
          //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //         crossAxisCount: 2,
          //       ),
          //       children: [
          //         InkWell(
          //           child: Column(
          //             crossAxisAlignment: CrossAxisAlignment.center,
          //             mainAxisAlignment: MainAxisAlignment.center,
          //             children: [
          //               Image.network(
          //                   "https://assets.gadgets360cdn.com/img/crypto/dogecoin-og-logo.png"),
          //               SizedBox(
          //                 height: 15,
          //               ),
          //               Text("3123"),
          //               // Image.network(
          //               //     "https://assets.gadgets360cdn.com/img/crypto/dogecoin-og-logo.png"),
          //               // SizedBox(
          //               //   height: 15,
          //               // ),
          //               // Text("2222"),
          //             ],
          //           ),
          //         )
          //       ],
          //     ),
          //   ),
          // )
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
