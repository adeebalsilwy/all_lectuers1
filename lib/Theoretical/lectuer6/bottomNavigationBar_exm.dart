// ignore_for_file: file_names, library_private_types_in_public_api, override_on_non_overriding_member, unnecessary_brace_in_string_interps, unused_field, prefer_const_constructors

import 'package:flutter/material.dart';

class BottomNavigationBarExm extends StatefulWidget {
  const BottomNavigationBarExm({Key? key}) : super(key: key);
  static const rout_name = '/BottomNavigationBarExm';

  @override
  _BottomNavigationBarExmState createState() => _BottomNavigationBarExmState();
}

class _BottomNavigationBarExmState extends State<BottomNavigationBarExm> {
  @override
  int selectedlndex = 0;
  List<Widget> items_roq = [
    Text(
      'Roq_Index 0: Home',
    ),
    Text(
      'Roq_Index 1: Profile',
    ),
    Text(
      'Roq_Index 3: Shop',
    ),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(''),
        ),
        body: Center(
            child: IndexedStack(
                index: selectedlndex,
                children: items_roq) // items roq.elementAt( index),
            ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            const BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.access_time),
              label: 'access_time',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.place_outlined),
              label: 'Location',
            ),
          ],
          elevation: 30,
          unselectedItemColor: Colors.blue,
          selectedItemColor: Colors.amber,
          type: BottomNavigationBarType.fixed,
          iconSize: 30,
          onTap: (value) {
            setState(() {
              selectedlndex = value;
            });
          },
        ));
  }
}
