import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Navigation_with_Named_Routes()));

class Navigation_with_Named_Routes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color(0xFF02BB9F),
        primaryColorDark: const Color(0xFF167F67),
        hintColor: const Color(0xFF167F67),
      ),
      debugShowCheckedModeBanner: false,

      // Start the app with the "/" named route. In this case, the app starts
      // on the FirstScreen widget.
      //  home:HomeScreen_Roq_Ex(), //  OR
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => HomeScreen_Roq_Ex(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/second': (context) => SecondScreen_Roq_Ex(),
      },
    );
  }
}

/////////////////////////////////// First Page //////////////////////
class HomeScreen_Roq_Ex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen Roq'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Click Here'),
          //color: Colors.orangeAccent,
          onPressed: () {
            Navigator.pushNamed(context, '/second');
          },
        ),
      ),
    );
  }
}

//////////////////////////////////////// Secreen 2 ///////////////
class SecondScreen_Roq_Ex extends StatelessWidget {
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
          child: Text('Go back!'),
        ),
      ),
    );
  }
}
