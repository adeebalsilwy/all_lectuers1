import 'package:flutter/material.dart';



class Expansionpanel_Roq_Ex extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Expansionpanel_Roq_Ex> {

  ////////////////////////// Go to Main Screen of Way 1 -->push

  void MainScreen_pushfun_roq(BuildContext ctx_roq) {
    //Navigator.of(ctx_roq).pushNamed('/Screen2');  Or
    Navigator.of(context)
        .pushNamed('/Main_Screen__Push_Roq');
  }
 /////////////////////////////////////////////
  ////////////////////////// Go to Main Screen of Way 2 -->rout

  void MainScreen_riutfun_roq(BuildContext ctx_roq) {
    //Navigator.of(ctx_roq).pushNamed('/Screen2');  Or
    Navigator.of(context)
        .pushNamed('/Main_Screen_Rout_Roq');

  }

  /////////////////////////////////////////////
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Ways to navigate to the pages',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: Column(
          children: <Widget>[
            SizedBox(height: 20.0),
            ExpansionTile(
              title: Text(
                "Navigation from Page to another",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              children: <Widget>[
                ExpansionTile(
                  title: Text(
                    'MaterialPageRoute Way',
                  ),
                  children: <Widget>[
                    ListTile(
                      title: Text('Push without send data'),
                      onTap: () =>  () => MainScreen_pushfun_roq(context)),
                    ListTile(
                      title: Text('Push with send data'),
                      onTap: () => MainScreen_pushfun_roq(context)),
                    ListTile(
                      title: Text('pushReplacement '),
                      onTap: () => MainScreen_pushfun_roq(context)),

                  ],
                ),
                ExpansionTile(
                  title: Text(
                    'Navigating by Route Way',
                  ),
                  children: <Widget>[
                    ListTile(
                      title: Text('PushNamed without send data '),
                      onTap: ()=> MainScreen_riutfun_roq(context),),

                    ListTile(
                      title: Text(
                          'PushNamed with send data'),
                      onTap: () {MainScreen_riutfun_roq(context);},
                    ),
                    ListTile(
                      title: Text(
                          'pushReplacementNamed'),
                      onTap: ()=> MainScreen_riutfun_roq(context),),


                  ],
                ),
                ListTile(
                  title: Text('Example'),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
