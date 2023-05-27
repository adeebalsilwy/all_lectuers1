import 'package:flutter/material.dart';
void main()
{
  runApp(SimpleDialog_Roq_EX());
}
class SimpleDialog_Roq_EX extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SimpleDialog Roq App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState()
  {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  String _selected ="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SimpleDialog Roq App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                _displayDialog(context);
              },
              child: Text("Show SimpleDialog"),
            ),
            Text(_selected)
          ],
        ),
      ),
    );
  }

  _displayDialog(BuildContext context) async {
    _selected = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return Expanded(
          child: SimpleDialog(
            title: Text('Choose food fro Menu Roq'),
            children:[
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, "Pizza"); },
                child: const Text('Pizza'),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, "Shorma"); },
                child: const Text('Shorma'),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, "Chiken"); },
                child: const Text('Chiken'),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, "Burger");
                },
                child: const Text('Burger'),
              ),
            ],
            elevation: 10,
            backgroundColor: Colors.yellowAccent.shade100,
            shape: StadiumBorder(),

            //backgroundColor: Colors.green,
          ),
        );
      },
    );

    if(_selected != null)
    {
      setState(() {
        _selected = _selected;
      });
    }
  }
}
