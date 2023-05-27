// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../lectuer7/Image_from.dart';
import 'Navagetor_screen.dart';

class MainLect7 extends StatefulWidget {
  const MainLect7({Key? key}) : super(key: key);
  static const rout_name = '/MainLect7';

  @override
  _MainLect7State createState() => _MainLect7State();
}

class _MainLect7State extends State<MainLect7> {
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
                  'تطبيق الديت تايم بيكر  ',
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
                      lec7.rout_name,
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
