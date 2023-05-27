import 'package:flutter/material.dart';
///////////////////////// Main Screen /////////////
void main() => runApp(TebBar_Roq_Ex());

class TebBar_Roq_Ex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Tabs Roq App'),
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.contacts), text: "Contact"),
                Tab(icon: Icon(Icons.camera_alt), text: "Cammera")
              ],
            ),
          ),
          body: TabBarView(
            children: [
              FirstScreen_Roq(),
              SecondScreen_Roq(),
            ],
          ),
        ),
      ),
    );
  }
}

////////////////////////// First Screen ///////////
class FirstScreen_Roq extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Text('It is a contact tab, which is responsible for displaying the contacts stored in your mobile',
            style: TextStyle(fontSize: 32.0),
          )
      ),
    );
  }
}

/////////////////////////Second Screen ///////////////////
//import 'package:flutter/material.dart';

class SecondScreen_Roq extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('It is a second layout tab, which is responsible for taking pictures from your mobile.',
          style: TextStyle(fontSize: 35.0),
        ),
      ),
    );
  }
}

//////////////////////////////////////////