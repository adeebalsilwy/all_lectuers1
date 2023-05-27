// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, camel_case_types, file_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class restran_Screen extends StatelessWidget {
  const restran_Screen({Key? key}) : super(key: key);
  static const rout_name = "/restran_Screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SizedBox(
          width: double.infinity,
          height: 290,
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            elevation: 20,
            margin: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                      child: Image.asset(
                        "assets/b.jpg",
                        height: 200,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      right: 10,
                      child: Container(
                        width: 300,
                        color: Colors.black54,
                        padding: EdgeInsets.symmetric(
                          vertical: 5,
                          horizontal: 20,
                        ),
                        child: Text(
                          'spaghetti with tomato sacuse ',
                          style: TextStyle(
                            fontSize: 26,
                            color: Colors.white,
                          ),
                          softWrap: true,
                          overflow: TextOverflow.fade,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.schedule,
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Text("simple"),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.fact_check,
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Text("toww"),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.nat,
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Text("three"),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
