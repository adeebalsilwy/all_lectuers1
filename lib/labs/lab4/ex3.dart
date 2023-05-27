import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ex4_3 extends StatefulWidget {
  static const rout_name = "/ex4_3";

  @override
  _PopupMenuButtonState createState() => _PopupMenuButtonState();
}

class _PopupMenuButtonState extends State<ex4_3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PopupMenuButton '),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Center(
            child: Column(children: [
              Text(
                '1-Simole PopupMenuButton',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Divider(thickness: 2),

              SizedBox(height: 5),
              Text(
                '2-Items PopupMenuButton',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Divider(
                thickness: 2,
              ),
              Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                color: Colors.orangeAccent,
                //child: ThreeItemsPopButton()
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '3-ONSelected of  PopupMenuButton',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),

              Divider(
                thickness: 2,
              ),
              //_selectPopup(),
              SizedBox(
                height: 5,
              ),

              Text(
                '4-Padding  of  PopupMenuButton',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),

              Divider(
                thickness: 2,
              ),
              Container(
                color: Colors.teal.shade200,
                // child: _paddingPopup(),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '5-Chaild  of  PopupMenuButton',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),

              Divider(
                thickness: 2,
              ),
              OutlinedButton(
                  onPressed: () {
                    // _childPopup();
                  },
                  child: Text('_childPopup();')),
              SizedBox(
                height: 10,
              ),
              Text(
                '6-Ofset  of  PopupMenuButton',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),

              Divider(
                thickness: 2,
              ),
              Container(
                color: Colors.cyan,
                child: OffsetPopup(),
              ),
              SizedBox(
                height: 5,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

Widget OffsetPopup() => PopupMenuButton<int>(
    itemBuilder: (context) =>
        [PopupMenuItem(value: 1, child: Text("openflutter"))]);
