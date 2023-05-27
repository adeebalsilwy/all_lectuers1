import 'package:all_lectuers1/labs/main_Lab.dart';
import 'package:all_lectuers1/main_class.dart';
import 'package:flutter/material.dart';

class MainAll extends StatefulWidget {
  const MainAll({Key? key}) : super(key: key);
  static const main_screen = 'MainAll';

  @override
  _MainAllState createState() => _MainAllState();
}

class _MainAllState extends State<MainAll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(''),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'تطبيقات اديب الصلوي ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.deepPurpleAccent,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Card(
                color: Colors.blueGrey,
                shadowColor: Colors.deepPurpleAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ListTile(
                  title: Text(
                    'تطبيقات الجزء النظري',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(
                    'قائمة تحتوي على التطبيقات التعليمية في الجزء النظري',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  leading: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        MainClass.rout_name,
                      );
                    },
                    icon: Icon(Icons.golf_course),
                    label: Text(
                      'معاينة',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Card(
                color: Colors.blueGrey,
                shadowColor: Colors.deepPurpleAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ListTile(
                  title: Text(
                    'تطبيقات العملي',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(
                    'قائمة تحتوي على التطبيقات التعليمية في الجزء العملي',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  leading: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        main_lab.rout_name,
                      );
                    },
                    icon: Icon(Icons.golf_course),
                    label: Text(
                      'معاينة',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
