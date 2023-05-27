import 'package:flutter/material.dart';
import 'ex1.dart';
import 'ex2.dart';
import 'ex3.dart';
import 'ex4.dart';

class lab5 extends StatefulWidget {
  const lab5({Key? key}) : super(key: key);
  static const rout_name = "/lab5";

  @override
  State<lab5> createState() => _lab5State();
}

class _lab5State extends State<lab5> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10))),
          title: Text('Lab 5 Work'),
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
                    'دراور المتسخدم والبوتوم شيت ',
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
                        ex5_1.rout_name,
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
                    ' الدراور من اليمين واليسار ',
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
                        ex5_2.rout_name,
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
                    ' البوتوم شيت بانواعها ',
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
                        ex5_3.rout_name,
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
                        ex5_4.rout_name,
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
