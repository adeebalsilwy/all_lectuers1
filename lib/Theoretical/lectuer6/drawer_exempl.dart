// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class DrawerExempl extends StatelessWidget {
  static const rout_name = '/DrawerExempl';

  const DrawerExempl();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('drawer ememple '),
      ),
      body: Center(
        child: ElevatedButton.icon(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.golf_course),
          label: const Text(
            'الرجوع  ',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text(
                'welcom deebo dwrawer ',
                style: TextStyle(
                  color: Colors.yellowAccent,
                  fontSize: 30,
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.black87,
              ),
            ),
            ListTile(
              title: Text('ali mail inboxes'),
              leading: Icon(Icons.mail),
            ),
            Divider(
              height: 5,
            ),
            ListTile(
              title: Text('prmary'),
            ),
            ListTile(
              title: Text('scial '),
            ),
            ListTile(
              title: Text('promotion  '),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        icon: Icon(Icons.save),
        label: Text("Save"),
      ),
    );
  }
}
