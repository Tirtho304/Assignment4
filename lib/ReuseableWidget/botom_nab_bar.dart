import 'package:flutter/material.dart';

class Botomnavbar extends StatelessWidget {
  Icon? botomNavbaricon;
  String? botomNavbarname;

Botomnavbar({Icon ? botomNavbaricon,String ? botomNavbarname}){
  this.botomNavbaricon=botomNavbaricon;
  this.botomNavbarname=botomNavbarname;
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
            BottomNavigationBarItem(
              icon: botomNavbaricon!,
              label: botomNavbarname,
            )
        ]
        ),
    );
  }
}
