// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ConstructionRoute extends StatelessWidget {
  const ConstructionRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Construction in Progress!",
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
