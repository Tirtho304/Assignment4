// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

//import 'dart:html';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  List<String> catalog_list = ["Vegetable", "Meat", "Milk", "Masala"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, value) {
          return <Widget>[
            SliverAppBar(
              centerTitle: false,
              expandedHeight: 350,
              collapsedHeight: 350,
              backgroundColor: Colors.white,
              flexibleSpace: Padding(
                padding: EdgeInsets.only(top: 30, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello Pronoy",
                      style:
                          TextStyle(fontSize: 36, fontWeight: FontWeight.w600),
                    ),
                    Text("Let's get something"),
                    SizedBox(
                      height: 30,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            height: 130,
                            width: 300,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              color: Colors.green,
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(top: 15, left: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "40% Discount During\nCovid 19",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Align(
                                      alignment: Alignment.bottomRight,
                                      child: Image.asset(
                                        "image/6.png",
                                        width: 125,
                                      ))
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          Container(
                            height: 130,
                            width: 300,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              color: Colors.green,
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(top: 15, left: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "40% Discount During\nCovid 19",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Align(
                                      alignment: Alignment.bottomRight,
                                      child: Image.asset(
                                        "image/6.png",
                                        width: 125,
                                      ))
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          Container(
                            height: 130,
                            width: 300,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              color: Colors.green,
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(top: 15, left: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "40% Discount During\nCovid 19",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Align(
                                      alignment: Alignment.bottomRight,
                                      child: Image.asset(
                                        "image/6.png",
                                        width: 125,
                                      )),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Top Caagory",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        Padding(
                            padding: EdgeInsets.only(right: 15),
                            child: Text(
                              "View all",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.redAccent,
                              ),
                            ))
                      ],
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 36,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: catalog_list.length,
                        itemBuilder: (_, index) {
                          return Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.grey,
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                                child: Text(catalog_list[index]),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            )
          ];
        },
        body: Padding(
          padding: EdgeInsets.only(top: 30, left: 20),
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
              itemCount: 12,
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
                                  fontSize: 15, fontWeight: FontWeight.w500),
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
        ),
      )),
    );
  }
}
