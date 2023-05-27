import 'package:flutter/material.dart';

class WarbWidgetExm extends StatefulWidget {
  const WarbWidgetExm();
  static const rout_name = "/WarbWidgetExm";

  @override
  _WarbWidgetExmState createState() => _WarbWidgetExmState();
}

class _WarbWidgetExmState extends State<WarbWidgetExm> {
  late BuildContext context;
  @override
  void initState() {

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    this.context=context;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'wrap app deebo',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 16,bottom: 16),
              child: Column(

                children: [
                  buildText_funroq('without wrap widget'),
                  Padding(padding: EdgeInsets.only(right: 12,top: 8),
                  child: Text('Here we observe that the layout is overflowing to the rigth \n '
                      'which result in broken widget ',
                    style: TextStyle(
                      color: Colors.black45,
                      fontSize: 14.0,
                      fontStyle: FontStyle.italic,

                    ),
                    textAlign: TextAlign.center,
                  )
                    ,)
                ],
              ),
            ),
            Text("This will create an overflow error as you see "),
            SingleChildScrollView(
              child: Row(
                children: [
                  chipDesign("Food", Color(0xFF4fc3f7)),
                  chipDesign("Lifestyle", Color(0xFFffb74d)),
                  chipDesign("Health", Color(0xFFff8a65)),
                  chipDesign("Sports", Color(0xFF9575cd)),
                  chipDesign("Nature", Color(0xFF4db6ac)),
                  chipDesign("Fashion", Color(0xFF4db6ac)),
                  chipDesign("Heritage", Color(0xFFa4)),
                  chipDesign("City Life", Color(0xFF90a4ae)),
                  chipDesign("Entertainment", Color(0xFFba68c8)),
                ],
              ),
            ),

          divider(context),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Column(
                  children: <Widget>[
                    buildText_funroq('With Wrap widget'),
                    Padding(
                      padding: EdgeInsets.only(left: 12, right: 12, top: 8),
                      child: Text('Here we observe that chips are contained inside a Wrap '
                          'widget.\nlt adjusts all the children according to the space'
                          ' available\nand automatically wraps to the next line',
                        style: TextStyle(
//color: Colors.grey[400],
                            color: Colors.black54,
                            fontSize: 14.0,
                            fontStyle: FontStyle.italic,
                            ),
                        textAlign: TextAlign.center,
                      ),),
                  ],
                ),
              ),
              ///This will handle itself to get rid of the overflow error
              Wrap(
                spacing: 0.0, // gap between adjacent chips
                runSpacing: 0.0, // gap between lines
                children: <Widget>[
                  chipDesign("Food", Color(0xFF4fc3f7)),
                  chipDesign("Lifestyle", Color(0xFFffb74d)),
                  chipDesign("Health", Color(0xFFff8a65)),
                  chipDesign("Sports", Color(0xFF9575cd)),
                  chipDesign("Nature", Color(0xFF4db6ac)),
                  chipDesign("Fashion", Color(0xFF4db6ac)),
                  chipDesign("Heritage", Color(0xFF4db6ac)),
                  chipDesign("City Life", Color(0xFF90a4ae)),
                  chipDesign("Entertainment", Color(0xFFba68c8)),
                ],
              ),
            ],
          ),
          ],
        ),
      ),
    );
  }
}
buildText_funroq(String text_roq) {
  return Padding(
    padding: const EdgeInsets.all(2.0),
    child: Column(
      children: [
        const Divider(
          thickness: 2,
        ),
        Text(
          "$text_roq",
          style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple[500],
          ),
            //  fontFamily: ubuntuRegularFont),
        ),
        const Divider(
          thickness: 2,
        ),
      ], ), );
}
Widget chipDesign(String label, Color color) => Container(
  child: Chip(
    label: Text(
      label,
      style: TextStyle(color: Colors.white,
      ),
    ),
    backgroundColor: color,
    elevation: 4,
    shadowColor: Colors.grey[50],
    padding: EdgeInsets.all(4),
  ),
  margin: EdgeInsets.only(left: 12, top: 2, bottom: 2),
);
Container divider(BuildContext context) => Container(
  child: Divider(),
  margin: EdgeInsets.only(left: 10,  top: 28, bottom: 28),
);
