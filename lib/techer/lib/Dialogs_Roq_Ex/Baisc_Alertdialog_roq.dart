import 'package:flutter/material.dart';

void main() => runApp(Baisc_AlertDialog_Roq());

class Baisc_AlertDialog_Roq extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Basic Alert Roq';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: MyAlert(),
      ),
    );
  }
}

class MyAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ElevatedButton(
        child: Text('Show alert'),
        onPressed: () {
          showAlertDialog(context);
        },
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  // Create button
  Widget okButton = ElevatedButton(style: ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30),
    ),
    backgroundColor: Colors.amber.shade500,),
    child: Text("Close !"),
    onPressed: (){Navigator.of(context).pop();
    },
  );

  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Baisc Alert"),
    content: Text("This is an Baisc Alert message by Ruqaih Salman."),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return alert;
    },
  );
}