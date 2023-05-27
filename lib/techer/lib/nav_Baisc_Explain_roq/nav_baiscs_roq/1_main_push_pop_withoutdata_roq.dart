import 'package:flutter/material.dart';



class Main_Push_Pop_Ex1_roq extends StatelessWidget {
  const Main_Push_Pop_Ex1_roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Roq App',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.green,
      ),
      home: Screen1_Ex1_Roq(),
    );
  }
}
/////////////////////////////// First Page
class Screen1_Ex1_Roq extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen Roq'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Click Here'),

          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>
                  Screen2_Ex1_Roq()),
            );
          },
        ),
      ),
    );
  }
}
////////////////////////////////////// Second Page
class Screen2_Ex1_Roq extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen Roq"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back'),
        ),
      ),
    );
  }
}
