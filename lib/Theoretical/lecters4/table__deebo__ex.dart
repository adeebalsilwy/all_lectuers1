// ignore_for_file: constant_identifier_names, camel_case_types, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

class Table_Deebo_Ex extends StatefulWidget {
  static const rout_name = '/Table_Deebo_Ex';

  @override
  _TableExample createState() => _TableExample();
}

class _TableExample extends State<Table_Deebo_Ex> {
  build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Table deebo Example'),
      ),
      body: Center(
          child: Column(children: <Widget>[
        Container(
          margin: EdgeInsets.all(20),
          child: Table(
            defaultColumnWidth: FixedColumnWidth(120.0),
            border: TableBorder.all(
                color: Colors.black, style: BorderStyle.solid, width: 2),
            children: [
              TableRow(children: [
                Column(children: [
                  Text('Website', style: TextStyle(fontSize: 20.0))
                ]),
                Column(children: [
                  Text('Tutorial', style: TextStyle(fontSize: 20.0))
                ]),
                Column(children: [
                  Text('Review', style: TextStyle(fontSize: 20.0))
                ]),
              ]),
              TableRow(children: [
                Column(children: [Text('Javatpoint')]),
                Column(children: [Text('Flutter')]),
                Column(children: [Text('5*')]),
              ]),
              TableRow(children: [
                Column(children: [Text('Javatpoint')]),
                Column(children: [Text('MySQL 1 ')]),
                Column(children: [Text('5* 1 ')]),
              ]),
              TableRow(children: [
                Column(children: [Text('Javatpoint')]),
                Column(children: [Text('ReactJS')]),
                Column(children: [Text('5*')]),
              ]),
            ],
          ),
        ),
      ])),
    );
  }
}
