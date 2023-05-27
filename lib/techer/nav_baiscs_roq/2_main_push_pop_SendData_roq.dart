import 'package:flutter/material.dart';

class Main_Push_Pop_Ex2_roq extends StatelessWidget {
  const Main_Push_Pop_Ex2_roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Roq App',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.green,
      ),
      home: Screen1_Ex2_Roq(),
    );
  }
}

////////////////////////// First Page
class Screen1_Ex2_Roq extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('First Screen Roq'),
        ),
        body: Center(
            child: ElevatedButton(
                child: Text(
                  "Go to Screen2 with send data",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) {
                        return Screen2_Ex2_Roq("Ruqaih Salman", 99);
                      },
                    ),
                  );
                })));
  }
}

////////////////////////// Second Page ////////////////////////
class Screen2_Ex2_Roq extends StatelessWidget {
  //////////////////////////Recive Data from screen 1//////////////////////////////////////

  final String str_roq;
  final int int_roq;

  Screen2_Ex2_Roq(this.str_roq, this.int_roq);

  ////////////////////////////////////////////////////////////////////////////
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(" Screen2 Roq")),
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text("The Data from onother Page :\n"),
          Divider(),
          Text(
            "Name : $str_roq",
            style: TextStyle(fontSize: 35, color: Colors.purple),
          ),
          Text(
            "Mark : $int_roq",
            style: TextStyle(fontSize: 35, color: Colors.purple),
          ),
        ])));
  }
}
