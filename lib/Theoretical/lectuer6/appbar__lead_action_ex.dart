// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:all_lectuers1/Theoretical/lectuer6/persistentFooterButtons.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Appbar_LeadAction_ex extends StatelessWidget {
  const Appbar_LeadAction_ex({super.key});
  static const rout_name = '/Appbar_LeadAction_ex';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar_leading(),
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
    );
  }

  AppBar buildAppBar_leading() {
    return AppBar(
      leading: Padding(
        padding: EdgeInsets.only(left: 1),
        child: Row(
          children: [
            IconButton(
              onPressed: () =>
                  _showToast_fun_Roq("You Clicked leading setting icon"),
              icon: Icon(Icons.settings),
            ),
            Expanded(
              child: IconButton(
                onPressed: () =>
                    _showToast_fun_Roq("You Clicked leading schedule icon"),
                icon: Icon(Icons.schedule),
              ),
            ),
          ],
        ),
      ),
      actions: [
        IconButton(
          onPressed: () =>
              _showToast_fun_Roq("You Clicked actions setting icon"),
          icon: Icon(Icons.settings),
        ),
        IconButton(
          onPressed: () =>
              _showToast_fun_Roq("You Clicked actions schedule icon"),
          icon: Icon(Icons.schedule),
        ),
      ],
      flexibleSpace: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.yellowAccent,
          Colors.black54,
          Colors.yellowAccent,
        ])),
      ),
//
      centerTitle: true,
//
      title: Text(
        "AppBar shapel",
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
      ),
      backgroundColor: Colors.pink,
    );
  }

  _showToast_fun_Roq(msgRoq) {
    Fluttertoast.showToast(
        msg: msgRoq.toString(),
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.black,
        textColor: Colors.yellowAccent,
        fontSize: 16.0);
  }
}
