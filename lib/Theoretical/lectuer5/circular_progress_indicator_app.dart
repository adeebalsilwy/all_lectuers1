// ignore_for_file: constant_identifier_names, use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';

class CircularProgress extends StatefulWidget {
  const CircularProgress();
  static const rout_name = '/CircularProgress';

  @override
  _CircularProgressState createState() => _CircularProgressState();
}

class _CircularProgressState extends State<CircularProgress> {
  late bool _loading;
  double? _progressValue;
  void initState() {
    super.initState();
    _loading = false;
    _progressValue = 0.0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Circular Progress Roq Bar"),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(14.0),
          child: _loading
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(
                      strokeWidth: 10,
                      backgroundColor: Colors.yellow,
                      valueColor:
                          const AlwaysStoppedAnimation<Color>(Colors.red),
                      value: _progressValue,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('${(_progressValue! * 100).round()}%'),
                  ],
                )
              : Text("Press button for downloading",
                  style: TextStyle(fontSize: 25)),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _loading = !_loading;
            _updateProgress();
          });
        },
        child: Icon(Icons.cloud_download),
      ),
    );
  }

  void _updateProgress() {
    setState(() {
      const oneSec = const Duration(seconds: 1);
      Timer.periodic(
          oneSec,
          (Timer t) async => setState(() {
                _progressValue = _progressValue! + 0.2;
                if (_progressValue!.toStringAsFixed(1) == '1.0') {
                  _loading = false;
                  t.cancel();
                  _progressValue = 0.0;
                  return;
                }
              }));
    });
  }
}
