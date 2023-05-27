// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'continer_exemple.dart';
import 'stack_exemple.dart';
import 'table__deebo__ex.dart';

class MainLect4 extends StatefulWidget {
  const MainLect4({Key? key}) : super(key: key);
  static const rout_name = '/MainLect4';

  @override
  _MainLect4State createState() => _MainLect4State();
}

class _MainLect4State extends State<MainLect4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              color: Colors.blueGrey,
              child: ListTile(
                textColor: Colors.white,
                title: Text(
                  'تطبيق الحاويات ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'يحتوي على الاشياء الاساسيه  للحاويات وبعسسه والكارد وغيرها ',
                ),
                leading: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      Layout_Screen.rout_name,
                    );
                  },
                  icon: Icon(Icons.golf_course),
                  label: Text(
                    'معاينه ',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              color: Colors.blueGrey,
              child: ListTile(
                textColor: Colors.white,
                title: Text(
                  'تطبيق الاستاك  ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'يحتوي على    والاستاك ',
                ),
                leading: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      stack_exemple.rout_name,
                    );
                  },
                  icon: Icon(Icons.golf_course),
                  label: Text(
                    'معاينه ',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              color: Colors.blueGrey,
              child: ListTile(
                textColor: Colors.white,
                title: Text(
                  'تطبيق الجدول  ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'يحتوي على    الجدول ',
                ),
                leading: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      Table_Deebo_Ex.rout_name,
                    );
                  },
                  icon: Icon(Icons.golf_course),
                  label: Text(
                    'معاينه ',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
