// ignore_for_file: use_key_in_widget_constructors, camel_case_types

import 'package:flutter/material.dart';

class stack_exemple extends StatelessWidget {
  static const rout_name = '/stack_exemple';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            " Stack Roq Example",
            style: const TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
        body: Center(
          child: Stack(
            fit: StackFit.passthrough,
            children: <Widget>[
// Max Size Widget
              Container(
                height: 300,
                width: 400,
                color: Colors.green,
                child: Center(
                  child: Text(
                    'Top Widget: Green',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              Positioned(
                top: 30,
                right: 20,
                child: Container(
                  height: 100,
                  width: 150,
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      'Middle Widget',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
              Positioned(
                  top: 30,
                  left: 20,
                  child: Container(
                    height: 100,
                    width: 150,
                    color: Colors.orange,
                    child: Center(
                      child: Text(
                        'Bottom Widget',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  )),
            ],
          ),
        ));
  }
}
