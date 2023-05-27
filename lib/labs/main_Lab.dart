// ignore_for_file: camel_case_types

import 'package:all_lectuers1/labs/lab2/main_lab1.dart';
import 'package:all_lectuers1/labs/lab4/main_lab4.dart';
import 'package:all_lectuers1/labs/lab6/main_lab5.dart';
import 'package:all_lectuers1/labs/lab7/main_lab6.dart';
import 'package:flutter/material.dart';

import 'lab2/Listview_screen.dart';
import 'lab2/prodact_view.dart';

import 'semest2/all_test.dart';
import 'lab3/mainlab3.dart';

class main_lab extends StatelessWidget {
  const main_lab({Key? key}) : super(key: key);
  static const rout_name = "/main_lab";

  // This widget is the root of your application.
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
              shadowColor: Colors.deepPurpleAccent,
              child: ListTile(
                title: Text(
                  'اللاب الاول  ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'يحتوي على الاشياء الاساسيه  للحاويات ,والليست  ',
                ),
                leading: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      main_lab1.rout_name,
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
              shadowColor: Colors.deepPurpleAccent,
              child: ListTile(
                title: Text(
                  'اللاب  الثالث  ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'يحتوي على الاشياء الاساسيه  لليست    ',
                ),
                leading: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      main_lab3.rout_name,
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
              shadowColor: Colors.deepPurpleAccent,
              child: ListTile(
                title: Text(
                  ' اللاب الرابع   ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(''),
                leading: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      lab4.rout_name,
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
              shadowColor: Colors.deepPurpleAccent,
              child: ListTile(
                title: Text(
                  ' اللاب السادس     ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(''),
                leading: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      lab5.rout_name,
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
              shadowColor: Colors.deepPurpleAccent,
              child: ListTile(
                title: Text(
                  ' اللاب السابع     ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(''),
                leading: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      lab7.rout_name,
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
