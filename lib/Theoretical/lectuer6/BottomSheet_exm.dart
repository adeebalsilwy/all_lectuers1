// ignore_for_file: non_constant_identifier_names, override_on_non_overriding_member, unnecessary_new, unused_field, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_helper.dart';

class BottomSheetExm extends StatefulWidget {
  const BottomSheetExm({Key? key}) : super(key: key);
  static const rout_name = '/BottomSheetExm';

  @override
  _BottomSheetExmState createState() => _BottomSheetExmState();
}

class _BottomSheetExmState extends State<BottomSheetExm> {
  @override
  bool _show = false;
  final gKey = new GlobalKey<ScaffoldState>();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('model buttom sheet deebo'),
      ),
      body: Center(
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    show_model_buttom(context);
                  });
                },
                child: const Text(
                  'click to show modalbuttom sheet',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    showPrsistenbittomsheet();
                  });
                },
                child: const Text(
                  'click to show showPrsistenbittomsheet sheet',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    final SnackBar snackBar_deebo = SnackBar(
                      content: const Text('Yay! A Snckbar by '),
                      action: SnackBarAction(
                        label: 'Undo',
                        onPressed: () {},
                      ),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar_deebo);
                  });
                },
                child: const Text(
                  'show snick bar ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    show_flush_bar();
                  });
                },
                child: const Text(
                  'click to show flush bar  sheet',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void show_model_buttom(BuildContext ctx) {
    showModalBottomSheet(
      context: ctx,
      builder: (ctx) => Container(
        width: 300,
        height: 250,
        alignment: Alignment.center,
        child: const Text(
          'modal buttom sheet ',
          textScaleFactor: 2,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  void showPrsistenbittomsheet() {
    gKey.currentState?.showBottomSheet((context) {
      return Container(
        width: double.infinity,
        height: 250,
        color: Theme.of(context).primaryColorLight,
        alignment: Alignment.center,
        child: Column(children: [
          const Text(
            'presitensbottomsheet',
            textScaleFactor: 2,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                Navigator.of(context).pop();
              });
            },
            child: const Text('close presitensbottomsheet '),
          )
        ]),
      );
    });
  }

  void show_flush_bar() {
    Flushbar(
      title: 'deebo flushbar ',
      message: 'ary youe sure delete ',
      icon: const Icon(
        Icons.done_outline,
        size: 30,
        color: Colors.greenAccent,
      ),
      leftBarIndicatorColor: Colors.blue.shade300,
      duration: const Duration(seconds: 5),
      // mainButton: const Text('undo '),
      onTap: (flushbar) {},
      mainButton: ElevatedButton(
        child: const Text('unod'),
        onPressed: () {},
      ),
    ).show(context);
  }
}
