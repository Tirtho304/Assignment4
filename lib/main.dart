// ignore_for_file: prefer_const_constructors

import 'package:ecommerce/Pages/botomnavigationbar.dart';
import 'package:ecommerce/Pages/text.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home : botomnavibar(),
    );
  }
}