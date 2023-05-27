// ignore_for_file: camel_case_types, file_names

import 'package:all_lectuers1/labs/lab2/prodact_view.dart';
import 'package:flutter/material.dart';

import 'grid_view.dart';
import 'listview_ex.dart';
import 'listview_sparted.dart';


class main_lab3 extends StatelessWidget {
  const main_lab3({super.key});
  static const rout_name = "/main_lab3";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'تكاليف  وتطبيفات الدكتوره رقيه',
        ),
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
                  'تطبيق الليست فيو تل ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'يحتوي على الاشياء الاساسيه  لليست فيو تيل  وبعسسه   ',
                ),
                leading: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      ListviewEx.rout_name,
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
                  'تطبيق الليست فيو سيبريتيد  ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'يحتوي على الاشياء الاساسيه  لليست فيو سيبريتد وليست تيل   ',
                ),
                leading: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      ListviewSparted.rout_name,
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
                  'تطبيق الجريد  فيو  ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'يحتوي على الاشياء الاساسيه  الجريد  فيو  الكارد   ',
                ),
                leading: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      GridView_ex.rout_name,
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

        ],
      ),
    );
  }
}
