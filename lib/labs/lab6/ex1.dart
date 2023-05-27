import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ex5_1 extends StatefulWidget {
  const ex5_1({Key? key}) : super(key: key);
  static const rout_name = "/ex5_1";

  @override
  State<ex5_1> createState() => _ex5_1State();
}

class _ex5_1State extends State<ex5_1> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      primary: true,
      appBar: AppBar(
        title: Text(
          'Scaffold Roq App',
        ),
      ),

/*leading: Icon (Icons.menu), actions: [Icon (Icons.search)],*/
      backgroundColor: Colors.white,

      drawer: Drawer(
        elevation: 16.0,
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("xyz"),
              accountEmail: Text("xyz@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text("xyz"),
              ),
              otherAccountsPictures: <Widget>[CircleAvatar()],
            ),
            ListTile(
              title: new Text("All Inboxes"),
              leading: new Icon(Icons.mail),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: new Text("Primary"),
              leading: new Icon(Icons.inbox),
            ),
            ListTile(
              title: new Text("Social"),
              leading: new Icon(Icons.people),
            ),
            ListTile(
              title: new Text("Promotions"),
              leading: new Icon(Icons.local_offer),
            )
          ],
        ),
      ),
      endDrawer: Drawer(
        elevation: 16.0,
        child: Column(children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("xyz"),
            accountEmail: Text("xyz@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Text("xyz"),
            ),
            otherAccountsPictures: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.white,
                child: Text("abc"),
              )
            ],
          ),
          ListTile(
            title: new Text("All Inboxes"),
            leading: new Icon(Icons.mail),
          ),
          Divider(
            height: 0.1,
          ),
          ListTile(
            title: new Text("Primary"),
            leading: new Icon(Icons.inbox),
          ),
          ListTile(
            title: new Text("Social"),
            leading: new Icon(Icons.people),
          ),
          ListTile(
            title: new Text("Promotions"),
            leading: new Icon(Icons.local_offer),
          ),
        ]),
      ),
      bottomSheet: Container(
        height: 200,
        color: Colors.amber,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('BottomSheet',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold)),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.place),
                  SizedBox(width: 5, height: 5),
                  Text("199 Valencia St, San Francisco, CA")
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.phone),
                  SizedBox(width: 5, height: 5),
                  Text(" (415) 339-0942) ")
                ],
              ),
            ],
          ),
        ),
      ),
/* ElevatedButton(
child: Text ('Close BottomSheet'),
onPressed: () => Navigator.pop (context),
) */
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            "This is Homepage",
            style: TextStyle(
              color: Colors.black,
              fontSize: 40.0,
              fontStyle: FontStyle.italic,
            ),
          ),
        ]),
      ),
//floatingActionButton
      floatingActionButton: FloatingActionButton(
          elevation: 10.0,
          child: Icon(Icons.add),
          onPressed: () {
            print('I am Floating button');
          }),
//floatingActionButtonLocation
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
//persistentFooterButtons
      persistentFooterButtons: <Widget>[
        Center(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
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
                  backgroundColor: Colors.redAccent,
                  elevation: 10.0,
                ),
                onPressed: () {},
                child: Icon(
                  Icons.delete,
                  color: Colors.white,
                ),
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  style: ElevatedButton.styleFrom(
                    elevation: 10.0,
                    backgroundColor: Colors.amber,
                  )),
              ElevatedButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.update,
                    color: Colors.white,
                  ),
                  style: ElevatedButton.styleFrom(
                    elevation: 10.0,
                    backgroundColor: Colors.purpleAccent,
                  )),
              ElevatedButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  style: ElevatedButton.styleFrom(
                    elevation: 10.0,
                    backgroundColor: Colors.teal,
                  )),
            ],
          ),
        ),
      ],
//bottomNavigationBar
      bottomNavigationBar: new BottomNavigationBar(
        currentIndex: 0,
        fixedColor: Colors.teal,
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "Search",
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            label: "Add",
            icon: Icon(Icons.add_box),
          ),
        ],
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
