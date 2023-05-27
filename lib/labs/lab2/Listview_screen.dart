// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names

import 'package:flutter/material.dart';

class List_Screen extends StatelessWidget {
  const List_Screen({super.key});
  static const rout_name = "/List_Screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Table(
          defaultColumnWidth: const FixedColumnWidth(120.0),
          border: TableBorder.all(
            width: 4,
            color: Colors.red,
            style: BorderStyle.solid,
          ),
          children: [
            TableRow(
              children: [
                Column(
                  children: [
                    Text(
                      'websit',
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'toutorite',
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'Revieq',
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
              ],
            ),
            TableRow(
              children: [
                Column(
                  children: [
                    Text(
                      'javascript',
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'mysql',
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '5*',
                    )
                  ],
                ),
              ],
            ),
            TableRow(
              children: [
                Column(
                  children: [
                    Text(
                      'javapoint',
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'flutter',
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '5*',
                    )
                  ],
                ),
              ],
            ),
            TableRow(
              children: [
                Column(
                  children: [
                    Text(
                      'javapoint',
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'mysql',
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '5*',
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
