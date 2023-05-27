import 'package:flutter/material.dart';
import 'ex1.dart';
import 'ex2.dart';
import 'ex3.dart';
import 'ex4.dart';

class lab7 extends StatefulWidget {
  const lab7({Key? key}) : super(key: key);
  static const rout_name = "/lab7";

  @override
  State<lab7> createState() => _lab7State();
}

class _lab7State extends State<lab7> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10))),
          title: Text('Lab 6 Work'),
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
                    'التوجيه باستخدام الروتينج ',
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
                        ex6_1.rout_name,
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
                    ' التوجيه Navigator.pushNamed',
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
                        ex6_2.rout_name,
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
                    ' الدايلوج    بانواعها ',
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
                        ex6_3.rout_name,
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
                    'التاب كنترول ',
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
                        ex6_4.rout_name,
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
