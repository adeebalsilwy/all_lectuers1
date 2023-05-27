// ignore_for_file: constant_identifier_names, unnecessary_const, prefer_const_constructors

import 'package:all_lectuers1/Theoretical/lectuer7/Navagetor_screen.dart';
import 'package:flutter/material.dart';

import 'Theoretical/lecters4/main_lect4.dart';
import 'Theoretical/lectuer5/main5.dart';
import 'Theoretical/lectuer6/main_lect6.dart';
import 'Theoretical/lectuer7/MainLect7.dart';

class MainClass extends StatefulWidget {
  const MainClass({Key? key}) : super(key: key);
  static const rout_name = "/MainClass";

  @override
  _MainClassState createState() => _MainClassState();
}

class _MainClassState extends State<MainClass> {
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
                  'الشبتر الرابع ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'يحتوي على الاشياء الاساسيه  للحاويات والاستاك والجدول',
                ),
                leading: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      MainLect4.rout_name,
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
                  'الشبتر الخامس ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'يحتوي على الاشياء الاساسيه  للتشيكس ليست  البرةجريز بار  الفورم والسوبتش والتايمر  ',
                ),
                leading: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      Main5.rout_name,
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
                  'الشبتر السادس  ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'يحتوي على الاشياء الاساسيه  للاب بار  و البوتوم نافجيتور و البوتشيت  والدراور والبرزيسينت فوتر ',
                ),
                leading: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      MainLect6.rout_name,
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
                  'الشبتر السابع   ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'يحتوي على الاشياء الاساسيه للنافجيشن و الديت تيم بيكر  ',
                ),
                leading: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      MainLect7.rout_name,
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
