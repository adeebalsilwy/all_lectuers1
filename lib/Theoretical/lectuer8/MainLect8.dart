// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '1.dart';
import 'Image_from.dart';
import 'Navagetor_screen.dart';

class MainLect8 extends StatefulWidget {
  const MainLect8({Key? key}) : super(key: key);
  static const rout_name = '/MainLect8';

  @override
  _MainLect8State createState() => _MainLect8State();
}

class _MainLect8State extends State<MainLect8> {
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
                  'تطبيق   الفيوتشر بيلدر   ',
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
                      HomePage_FuturBuilder_RoEx.rout_name,
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
                  'تطبيق جلب الصور   ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'يحتوي على    تطبيق جلب الصور  ',
                ),
                leading: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      Image_screen.rout_name,
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
