import 'package:flutter/material.dart';
import 'ex1.dart';
import 'ex2.dart';
import 'ex3.dart';

class lab4 extends StatefulWidget {
  const lab4({Key? key}) : super(key: key);
  static const rout_name = "/lab4";

  @override
  State<lab4> createState() => _lab4State();
}

class _lab4State extends State<lab4> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10))),
          title: Text('Lab 4 Work'),
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
                    ' فوؤم تسجيل الدخول  ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    ' ',
                  ),
                  leading: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        ex4_1.rout_name,
                      );
                    },
                    icon: Icon(Icons.golf_course),
                    label: Text(
                      'معاينه ',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
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
                    'تطبيق   الاله الحاسبه   ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    '   ',
                  ),
                  leading: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        ex4_2.rout_name,
                      );
                    },
                    icon: Icon(Icons.golf_course),
                    label: Text(
                      'معاينه ',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
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
                    ' المنيو بوتون  ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    '',
                  ),
                  leading: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        ex4_3.rout_name,
                      );
                    },
                    icon: Icon(Icons.golf_course),
                    label: Text(
                      'معاينه ',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
