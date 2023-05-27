// ignore_for_file: library_private_types_in_public_api, non_constant_identifier_names

import 'dart:async';

import 'package:flutter/material.dart';

class TimerExemple extends StatefulWidget {
  static const rout_name = '/TimerExemple';

  const TimerExemple();

  @override
  _TimerExempleState createState() => _TimerExempleState();
}

class _TimerExempleState extends State<TimerExemple> {
  var start_roq = 0;
  Timer? timer;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Timar Widget App Roq"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Align(
          alignment: Alignment.topCenter,
          child: Column(children: [
            Text("$start_roq",
                style: TextStyle(fontSize: 72, color: Colors.teal)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton.icon(
                    onPressed: () => startTimar(10),
                    icon: Icon(Icons.replay),
                    label: Text("Restart")),
                TextButton.icon(
                    onPressed: pauseTimar,
                    icon: Icon(Icons.pause),
                    label: Text("Pause")),
                TextButton.icon(
                    onPressed: continutTimar,
                    icon: Icon(Icons.play_arrow),
                    label: Text("Continue")),
              ],
            )
          ]),
        ),
      ),
    );
  }

  startTimar(int i) {
    if (timer != null) timer!.cancel();
    setState(() {
      start_roq = i;
    });
    timer = Timer.periodic(
        Duration(milliseconds: 500),
        (timer) => setState(() {
              start_roq < 1 ? timer.cancel() : start_roq -= 1;
            }));
  }

  pauseTimar() {
    if (timer != null) timer!.cancel();
  }

  continutTimar() {
    startTimar(start_roq);
  }
}
