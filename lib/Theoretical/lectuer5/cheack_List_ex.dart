// ignore_for_file: unnecessary_this

import 'package:flutter/material.dart';

class CheckboxListTile_ex extends StatefulWidget {
  static const rout_name = '/CheckboxListTile_ex';

  @override
  Cheack_List createState() => Cheack_List();
}

class Cheack_List extends State<CheckboxListTile_ex> {
  bool valuefirst = false;
  bool valuesecond = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Checkbox Example'),
      ),
      body: Container(
          padding: new EdgeInsets.all(22.0),
          child: Column(
            children: <Widget>[
              const SizedBox(
                width: 10,
              ),
              const Text(
                'Checkbox with Header and Subtitle',
                style: TextStyle(fontSize: 20.0),
              ),
              CheckboxListTile(
                secondary: const Icon(Icons.alarm),
                title: const Text('Ringing at 4:30 AM every day'),
                subtitle: const Text('Ringing after 12 hours'),
                value: valuefirst,
                onChanged: (bool? value) {
                  setState(() {
                    this.valuefirst = value!; //-->value!;
                  });
                },
              ),
              CheckboxListTile(
                controlAffinity: ListTileControlAffinity.trailing,
                secondary: const Icon(Icons.alarm),
                title: const Text('Ringing at 5:00 AM every day'),
                subtitle: const Text('Ringing after 12 hours'),
                value: this.valuesecond,
                onChanged: (bool? value) {
                  setState(() {
                    this.valuesecond = value!;
                  });
                },
              ),
            ],
          )),
    );
  }
}
