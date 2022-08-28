import 'package:flutter/material.dart';
class text extends StatelessWidget {
  const text({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Kena Becha.com",
        style: TextStyle(
          fontFamily: "Rubik Dirt",
          fontWeight: FontWeight.w700,
          color: Colors.red,
        ),
        ),
      ),
    );
  }
}