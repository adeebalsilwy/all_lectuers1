import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ex5_2 extends StatefulWidget {
  const ex5_2({Key? key}) : super(key: key);
  static const rout_name = "/ex5_2";

  @override
  State<ex5_2> createState() => _ex5_2State();
}

class _ex5_2State extends State<ex5_2> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  void initState() {
// TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      _scaffoldKey.currentState?.openDrawer();
    });
  }

  void onDrawerItemClicked(String name) {
    Navigator.pop(context);
    Fluttertoast.showToast(
        msg: "$name Selected",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM);
//Toast.show (name+" Selected", context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      appBar: new AppBar(
          title: new Text("Drawer Mail Roq App"),
          backgroundColor: Colors.pink[600],
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.close),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ]),
      drawer: Drawer(child: getDrawerContent(context)),
      endDrawer: Drawer(child: getDrawerContent(context)),
      body: Center(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      child: Text('Open Drawer (from left)'),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Theme.of(context).primaryColorDark,
                          textStyle: TextStyle()),
                      onPressed: () =>
                          _scaffoldKey.currentState?.openDrawer())),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      child: Text('Open Drawer (From Right) '),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Theme.of(context).primaryColorDark,
                          textStyle: TextStyle(fontSize: 15)),
                      onPressed: () =>
                          _scaffoldKey.currentState?.openEndDrawer()))
            ],
          ),
        ),
      ),
    );
  }

  Widget getDrawerContent(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
              height: 190,
              child: Stack(
                children: <Widget>[
                  Image.asset(
                    'assets/speaker.png',
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 40, horizontal: 14),
                    child: CircleAvatar(
                      radius: 36,
                      backgroundColor: Colors.grey[100],
                      child: CircleAvatar(
                        radius: 33,
                        backgroundImage: AssetImage("assets/computer_roq.jpg"),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("John Miller",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1
                                          ?.copyWith(
                                              color: Colors.grey[100],
                                              fontWeight: FontWeight.bold)),
                                  Container(height: 5),
                                  Text("johnmiller@mail.com",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1
                                          ?.copyWith(color: Colors.grey[100])),
                                ],
                              ),
                            ),
                            InkWell(
                              child: Icon(Icons.arrow_drop_down,
                                  size: 24.0, color: Colors.white),
                              onTap: () {},
                            )
                          ],
                        )),
                  ),
                ],
              )),
          Container(height: 8),
          ListTile(
            title: Text("All inboxes",
                style: Theme.of(context).textTheme.subtitle1?.copyWith(
                    color: Colors.grey[800], fontWeight: FontWeight.bold)),
            leading:
                Icon(Icons.move_to_inbox, size: 25.0, color: Colors.grey[600]),
            trailing: Text("75",
                style: Theme.of(context).textTheme.subtitle1?.copyWith(
                    color: Colors.grey[700], fontWeight: FontWeight.w500)),
            onTap: () {
              onDrawerItemClicked("All inboxes");
            },
          ),
          Divider(),
          ListTile(
            title: Text("Inbox",
                style: Theme.of(context).textTheme.subtitle1?.copyWith(
                    color: Colors.grey[800], fontWeight: FontWeight.bold)),
            leading: Icon(Icons.inbox, size: 25.0, color: Colors.grey[600]),
            trailing: Text("68",
                style: Theme.of(context).textTheme.subtitle1?.copyWith(
                    color: Colors.grey[700], fontWeight: FontWeight.w500)),
            onTap: () {
              onDrawerItemClicked("Inbox");
            },
          ),
          ListTile(
            title: Text("Priority inbox",
                style: Theme.of(context).textTheme.subtitle1?.copyWith(
                    color: Colors.grey[800], fontWeight: FontWeight.bold)),
            leading: Icon(Icons.label, size: 25.0, color: Colors.grey[600]),
            trailing: Container(
              padding: EdgeInsets.symmetric(vertical: 2, horizontal: 4),
              color: Color(0xFF1E88E5),
              child: Text("3 new", style: TextStyle(color: Colors.white)),
            ),
            onTap: () {
              onDrawerItemClicked("Priority inbox");
            },
          ),
          ListTile(
            title: Text("Social",
                style: Theme.of(context).textTheme.subtitle1?.copyWith(
                    color: Colors.grey[800], fontWeight: FontWeight.bold)),
            leading: Icon(Icons.people, size: 25.0, color: Colors.grey[600]),
            trailing: Container(
              padding: EdgeInsets.symmetric(vertical: 2, horizontal: 4),
              color: Colors.green,
              child: Text("51 new", style: TextStyle(color: Colors.white)),
            ),
            onTap: () {
              onDrawerItemClicked("Social");
            },
          ),
          Divider(),
          ListTile(
            title: Text("Starred",
                style: Theme.of(context).textTheme.subtitle1?.copyWith(
                    color: Colors.grey[800], fontWeight: FontWeight.bold)),
            leading: Icon(Icons.star, size: 25.0, color: Colors.grey[600]),
            onTap: () {
              onDrawerItemClicked("Starred");
            },
          ),
          ListTile(
            title: Text("Sent",
                style: Theme.of(context).textTheme.subtitle1?.copyWith(
                    color: Colors.grey[800], fontWeight: FontWeight.bold)),
            leading: Icon(Icons.send, size: 25.0, color: Colors.grey[600]),
            onTap: () {
              onDrawerItemClicked("Sent");
            },
          ),
          ListTile(
            title: Text("Spam",
                style: Theme.of(context).textTheme.subtitle1?.copyWith(
                    color: Colors.grey[800], fontWeight: FontWeight.bold)),
            leading: Icon(Icons.report, size: 25.0, color: Colors.grey[600]),
            trailing: Text("13",
                style: Theme.of(context).textTheme.subtitle1?.copyWith(
                    color: Colors.grey[700], fontWeight: FontWeight.w500)),
            onTap: () {
              onDrawerItemClicked("Spam");
            },
          ),
          ListTile(
            title: Text("Trash",
                style: Theme.of(context).textTheme.subtitle1?.copyWith(
                    color: Colors.grey[800], fontWeight: FontWeight.bold)),
            leading: Icon(Icons.delete, size: 25.0, color: Colors.grey[600]),
            onTap: () {
              onDrawerItemClicked("Trash");
            },
          ),
          Divider(),
          ListTile(
            title: Text("Settings",
                style: Theme.of(context).textTheme.subtitle1?.copyWith(
                    color: Colors.grey[800], fontWeight: FontWeight.bold)),
            leading: Icon(Icons.settings, size: 25.0, color: Colors.grey[600]),
            onTap: () {
              onDrawerItemClicked("Settings");
            },
          ),
          ListTile(
            title: Text("Help & Feedback",
                style: Theme.of(context).textTheme.subtitle1?.copyWith(
                    color: Colors.grey[800], fontWeight: FontWeight.bold)),
            leading:
                Icon(Icons.help_outline, size: 25.0, color: Colors.grey[600]),
            onTap: () {
              onDrawerItemClicked("Help & Feedback");
            },
          ),
          Center(
            child: TextButton(
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                    side: BorderSide(
                        color: Colors.blue, width: 1, style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(50)),
              ),
              child: Text("Click to dismiss"),
              onPressed: () => Navigator.of(context).pop(),
            ),
          )
        ],
      ),
    );
  }
}
