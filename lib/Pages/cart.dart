// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        initialIndex: 0,
        child: Scaffold(
            appBar: AppBar(
              title: Text(
                "My Adds",
                style: TextStyle(color: Colors.black),
              ),
              backgroundColor: Colors.white,
              elevation: 0,
              centerTitle: true,
              bottom: TabBar(
                  unselectedLabelColor: Colors.grey,
                  labelColor: Colors.pink,
                  indicatorColor: Colors.blueAccent,
                  tabs: [
                    Tab(
                      text: "Shop",
                      //child: Colors.grey,

                      icon: Icon(
                        Icons.shopping_bag,
                        color: Colors.grey,
                      ),
                    ),
                    Tab(
                      text: "Favourite",
                      //child: Colors.grey,

                      icon: Icon(
                        Icons.shopping_basket,
                        color: Colors.grey,
                      ),
                    )
                  ]),
            ),
            body: TabBarView(children: [
              Center(
                  child: Padding(
                padding: EdgeInsets.only(top: 30, left: 20),
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                    ),
                    itemCount: 2,
                    itemBuilder: (_, index) {
                      return Container(
                        height: 300,
                        width: 300,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: Colors.black,
                            width: 2,
                          ),
                        ),
                        child: Column(
                          //crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                child: Image.asset(
                              "image/dal.png",
                              height: 100,
                            )),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8),
                              child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Masuri",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  )),
                            ),
                            Padding(
                                padding: EdgeInsets.only(left: 8),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "chikon",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.pink),
                                  ),
                                ))
                          ],
                        ),
                      );
                    }),
              )),
              Center(
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: ListView.builder(itemBuilder: ((context, index) {
                    return Card(
                      elevation: 2,
                      child: ListTile(
                        leading: Image.asset("image/dal.png"),
                        trailing: Text("Price 390 Taka"),
                        title: Text("Mosuri Daal"),
                        subtitle: Text("Chikon"),
                      ),
                    );
                  })),
                ),
              )
            ])));
  }
}
