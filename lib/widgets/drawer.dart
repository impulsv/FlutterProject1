// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  MyDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color.fromARGB(255, 177, 194, 233),
        child: ListView(
          padding: EdgeInsets.zero,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            DrawerHeader(
                // decoration:
                //     BoxDecoration(color: Color.fromARGB(255, 128, 161, 237)),
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(255, 146, 172, 226)),
                  margin: EdgeInsets.zero,
                  accountName: const Text("Vedant"),
                  accountEmail: const Text("vedant.bhawnani@gmail.com"),
                  currentAccountPicture: Image.network(
                      'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/a89c3e38-b6f3-48a0-9f9e-df9a0129fb93/daghh5x-4a77b3ec-fd4f-4d17-9f84-5963a8cb5c03.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2E4OWMzZTM4LWI2ZjMtNDhhMC05ZjllLWRmOWEwMTI5ZmI5M1wvZGFnaGg1eC00YTc3YjNlYy1mZDRmLTRkMTctOWY4NC01OTYzYThjYjVjMDMucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.dWTFMrwnbAbj5TtUp9U_vQsohW7MnkRPymzR5wZQoV8'),
                )),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
                size: 25.0,
              ),
              title: Text("Home", style: TextStyle(fontSize: 19.0)),
              textColor: Colors.white,
              //subtitle: Text("Return to Home Page."),
              onTap: () {},
              hoverColor: Colors.yellow,
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
                size: 25.0,
              ),
              title: Text("Profile", style: TextStyle(fontSize: 19.0)),
              textColor: Colors.white,
              //subtitle: Text("Head to your profile."),
              onTap: () {},
              hoverColor: Colors.yellow,
              selectedColor: Color.fromARGB(255, 52, 65, 94),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail_solid,
                color: Colors.white,
                size: 25.0,
              ),
              title: Text("Contact", style: TextStyle(fontSize: 19.0)),
              textColor: Colors.white,
              subtitle: Text("Call me 😏"),
              onTap: () {},
              hoverColor: Colors.yellow,
            )
          ],
        ),
      ),
    );
  }
}
