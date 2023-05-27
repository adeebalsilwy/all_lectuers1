
import 'package:flutter/material.dart';
void main()
{
  runApp(AleartDialog_Roq_EX());
}
class AleartDialog_Roq_EX extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AlertDialog Roq App',
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AlertDialog Roq App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                _showDialog_roq_fun(context);
              },
              child: Text("Show Dialog "),
            ),
          ],
        ),
      ),
    );
  }
  _showDialog_roq_fun(BuildContext ctx_roq) {
    showDialog(barrierDismissible: false,
      context: ctx_roq,
      builder: (BuildContext ctx_roq) {
        return Expanded(
          child:
          AlertDialog(
            title: Text('Welcome Roq'),
            content: Text('Do you wanna learn flutter with D.Ruqaih Salman?'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('YES', style: TextStyle(color: Colors.black),),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(ctx_roq).pop();
                },
                child: Text('NO', style: TextStyle(color: Colors.black),),
              ),
            ],
            elevation: 10,
            backgroundColor: Colors.yellowAccent.shade100,

          ),
        );
      },
    );
  }
}
