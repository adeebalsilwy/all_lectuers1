import 'package:all_lectuers1/Theoretical/lectuer6/Toast.dart';
import 'package:flutter/material.dart';

import '../lecters4/continer_exemple.dart';
import '../lecters4/table__deebo__ex.dart';
import 'BottomSheet_exm.dart';
import 'appbar__lead_action_ex.dart';
import 'bottomNavigationBar_exm.dart';
import 'drawer_exempl.dart';
import 'persistentFooterButtons.dart';

class MainLect6 extends StatefulWidget {
  static const rout_name = '/MainLect6';

  const MainLect6({Key? key}) : super(key: key);

  @override
  _MainLect6State createState() => _MainLect6State();
}

class _MainLect6State extends State<MainLect6> {
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
                title: const Text(
                  'تطبيق الاب بار  ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: const Text(
                  'يحتوي عل الاب بار وخصائصه ا ',
                ),
                leading: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      Appbar_LeadAction_ex.rout_name,
                    );
                  },
                  icon: const Icon(Icons.golf_course),
                  label: const Text(
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
                title: const Text(
                  'تطبيق البوتوم نافجيتور   ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: const Text(
                  'يحتوي على    الباتوم نافجيتور وخصائصه  ',
                ),
                leading: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      BottomNavigationBarExm.rout_name,
                    );
                  },
                  icon: const Icon(Icons.golf_course),
                  label: const Text(
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
                title: const Text(
                  'تطبيق البوتوم شيت   ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: const Text(
                  'يحتوي على    البوتوم شيت وخصائصه  ',
                ),
                leading: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      BottomSheetExm.rout_name,
                    );
                  },
                  icon: const Icon(Icons.golf_course),
                  label: const Text(
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
                title: const Text(
                  'تطبيق  الدراور    ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: const Text(
                  'يحتوي على    الدراور شيت وخصائصه  ',
                ),
                leading: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      DrawerExempl.rout_name,
                    );
                  },
                  icon: const Icon(Icons.golf_course),
                  label: const Text(
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
                title: const Text(
                  'تطبيق  البرسينتج فوتر    ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: const Text(
                  'يحتوي على    البرسينتج فوتر شيت وخصائصه  ',
                ),
                leading: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      ElvatidButtonExm.rout_name,
                    );
                  },
                  icon: const Icon(Icons.golf_course),
                  label: const Text(
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
                title: const Text(
                  'تطبيق  رساله   التويست     ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                leading: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      Toast_screen.rout_name,
                    );
                  },
                  icon: const Icon(Icons.golf_course),
                  label: const Text(
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
