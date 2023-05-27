import 'package:flutter/material.dart';

class ex5_3 extends StatefulWidget {
  const ex5_3({Key? key}) : super(key: key);
  static const rout_name = "/ex5_3";

  @override
  State<ex5_3> createState() => _ex5_3State();
}

class _ex5_3State extends State<ex5_3> {
  @override
  final _gKey = new GlobalKey<ScaffoldState>();
  bool _show = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _gKey,
      appBar: AppBar(
        title: Text('BottomSheet Roq'),
      ),
      backgroundColor: Colors.white,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Builder(
            builder: (BuildContext ctxOfScaffold) {
              return Container(
                color: Colors.purpleAccent,
                height: 200,
//alignment: Alignment.center,
//padding: EdgeInsets.all (5),
                child: ElevatedButton.icon(
                  onPressed: () {
                    this._showMyBottomSheet_scaff(ctxOfScaffold);
                  },
                  icon: Icon(Icons.add_circle_outline),
                  label: Text("Show BottomSheet for the Scaffold Way1"),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).primaryColorDark),
                ),
              );
            },
          ),
          ElevatedButton.icon(
            onPressed: () {
              setState(() {
                _show = true;
              });
            },
            icon: Icon(Icons.add_circle_outline),
            label: Text("Show BottomSheet for the Scaffold Way2"),
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(5),
            child: ElevatedButton.icon(
              onPressed: () {
                this._showMyBottomSheet_Dialog(context);
              },
              icon: Icon(Icons.add_circle_outline),
              label: Text("Show Dialog containing a ModalBottomSheet"),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).primaryColorDark),
            ),
          ),
          ElevatedButton.icon(
            label: Text("Show Dialog containing a Persistent Bottom Sheet"),
            onPressed: () {
              displayBottomSheet_funRoq();
            },
            icon: Icon(Icons.add_circle_outline),
          ),
        ],
      )),
      bottomSheet: _showBottomSheet(),
      floatingActionButton: FloatingActionButton(
          elevation: 10.0,
          child: Icon(Icons.add),
          onPressed: () {
            print('I am Floating button');
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      persistentFooterButtons: <Widget>[
        ElevatedButton(
            onPressed: () {},
            child: Icon(
              Icons.print,
              color: Colors.white,
            ),
            style: ElevatedButton.styleFrom(
              elevation: 10.0,
              backgroundColor: Colors.green,
            )),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueGrey,
            elevation: 10.0,
          ),
          onPressed: () {},
          child: Icon(
            Icons.send,
            color: Colors.white,
          ),
        ),
      ],
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightGreen[200],
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            TextButton.icon(
              icon: Icon(Icons.home),
              label: Text(""),
              onPressed: () {},
            ),
            TextButton.icon(
              icon: Icon(Icons.email),
              label: Text(""),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }

  void _showMyBottomSheet_scaff(BuildContext ctxOfScaffold) {
    Scaffold.of(ctxOfScaffold).showBottomSheet<void>(
      (BuildContext context) {
        return Container(
          height: 200,
          color: Colors.amber,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const Text('BottomSheet'),
                ElevatedButton(
                  child: Text('Close BottomSheet'),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _showMyBottomSheet_Dialog(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.4,
//height: 200,
          color: Colors.amber,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const Text('Modal BottomSheet'),
                ElevatedButton(
                  child: const Text('Close BottomSheet'),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget? _showBottomSheet() {
    if (_show == true) {
      return BottomSheet(
        onClosing: () {},
        builder: (context) {
          return Container(
            height: 200,
            width: double.infinity,
            color: Colors.grey.shade200,
            alignment: Alignment.center,
            child: ElevatedButton(
              child: Text("Close Bottom Sheet"),
              style: ElevatedButton.styleFrom(
                onPrimary: Colors.white,
                primary: Colors.green,
              ),
              onPressed: () {
                _show = false;
                setState(() {});
              },
            ),
          );
        },
      );
    } else {
      return null;
    }
  }

  void displayBottomSheet_funRoq() {
    _gKey.currentState?.showBottomSheet((context) {
      return Container(
        height: 200,
        width: double.infinity,
        color: Colors.grey.shade200,
        alignment: Alignment.center,
        child: ElevatedButton(
          child: Text("Close Persistent Bottom Sheet"),
          style: ElevatedButton.styleFrom(
            onPrimary: Colors.white,
            primary: Colors.green,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      );
    });
  }
}
