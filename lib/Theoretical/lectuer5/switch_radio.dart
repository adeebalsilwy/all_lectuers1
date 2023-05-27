// ignore_for_file: camel_case_types, use_key_in_widget_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';

class Switch_Button_Roq_Ex extends StatefulWidget {
  const Switch_Button_Roq_Ex();
  static const rout_name = '/Switch_Button_Roq_Ex';

  @override
  State<Switch_Button_Roq_Ex> createState() => switch_button_state();
}

class switch_button_state extends State<Switch_Button_Roq_Ex> {
  bool swl_val = true;
  void onChangedswT_val(bool value) {
    setState(() {
      swl_val = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Switch App Roq'),
          backgroundColor: Colors.purpleAccent.shade700,
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Align(
            alignment: Alignment.topCenter,
            child: Container(
                padding: EdgeInsets.all(3.0),
                child: Column(
//mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SwitchListTile(
                          value: swl_val,
                          onChanged: onChangedswT_val,
                          title: Text('Reading mode'),
                          subtitle:
                              Text('The screen is optomized for reading.'),
                          activeColor: Colors.deepPurpleAccent.shade700,
                          inactiveTrackColor: Colors.red.shade700,
                          secondary: Icon(Icons.brightness_4))
                    ])),
          ),
        ));
    throw UnimplementedError();
  }
}
