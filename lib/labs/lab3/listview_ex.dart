import 'package:flutter/material.dart';

class ListviewEx extends StatelessWidget {
  const ListviewEx() ;
  static const rout_name = "/ListviewEx";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(
          vertical: 25.0
        ),
        height: 150,
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              width: 150,
              color: Colors.blue,
              alignment: Alignment.center,
              child: ListTile(
                leading: Icon(
                  Icons.home,
                ),
                title: Text('Home'),
              ),
            ),
            Container(
              width: 150,
              color: Colors.blue,
              alignment: Alignment.center,
              child: ListTile(
                leading: Icon(
                  Icons.camera_alt,
                ),
                title: Text('Camera'),
              ),
            ),
            Container(
              width: 150,
              color: Colors.blue,
              alignment: Alignment.center,
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                ),
                title: Text('Phone'),
              ),
            ),
            Container(
              width: 150,
              color: Colors.blue,
              alignment: Alignment.center,
              child: ListTile(
                leading: Icon(
                  Icons.map,
                ),
                title: Text('Map'),
              ),
            ),
            Container(
              width: 150,
              color: Colors.blue,
              alignment: Alignment.center,
              child: ListTile(
                leading: Icon(
                  Icons.settings,
                ),
                title: Text('Setting '),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
