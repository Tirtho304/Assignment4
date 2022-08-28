// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ecommerce/Pages/account.dart';
import 'package:ecommerce/Pages/add.dart';
import 'package:ecommerce/Pages/cart.dart';
import 'package:ecommerce/Pages/chat.dart';
import 'package:ecommerce/Pages/home.dart';
import 'package:ecommerce/ReuseableWidget/botom_nab_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class botomnavibar extends StatefulWidget {
  @override
  State<botomnavibar> createState() => _botomnavibarState();
}

class _botomnavibarState extends State<botomnavibar> {
  int _currentIndex = 0;

  final _pages = [
    Home(),
    Cart(),
    Add(),
    Chat(),
    Account(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor: Colors.purple,
          unselectedItemColor: Colors.grey,
          onTap: (int value) {
            setState(() {
              _currentIndex = value;
            });
          },
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              backgroundColor: Colors.white,
              icon: Icon(
                Icons.home,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.white,
              icon: Icon(
                Icons.add_shopping_cart_outlined,
              ),
              label: "My adds",
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.white,
              icon: Icon(
                Icons.add_outlined,
              ),
              label: "My adds",
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.white,
              icon: Icon(
                Icons.chat_bubble_rounded,
              ),
              label: "chat",
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.white,
              icon: Icon(
                Icons.person,
              ),
              label: "Account",
            ),
          ]),
      body: _pages[_currentIndex],
    );
  }
}
