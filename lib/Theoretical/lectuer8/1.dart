import 'package:flutter/material.dart';

class HomePage_FuturBuilder_RoEx extends StatelessWidget {
  static const rout_name = "/HomePage_FuturBuilder_RoEx";

  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('FuturBuilder Roq App'),
      ),
      body: Center(
          child: ElevatedButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (ctx) => FutureDemoPage(),
          ),
        ),
        child: Text('Demonstrate FutureBuilder By D.Ruqaih Salman'),
      )),
    ));
  }
}

class FutureDemoPage extends StatelessWidget {
  Future<String> getData() {
    return Future.delayed(Duration(seconds: 5), () {
      return 'I am the data that appeared after five seconds';
    });
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Future RoqNew Page, '),
        ),
        body: FutureBuilder(
          builder: (ctx, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasError) {
                return Center(
                    child: Text(
                  '{$snapshot.error} occured',
                  style: TextStyle(fontSize: 18),
                ));
              } else if (snapshot.hasData) {
                final String data_roq = snapshot.data as String;
                return Center(
                    child: Text(
                  '$data_roq',
                  style: TextStyle(fontSize: 18),
                ));
              } else
                return Container();
            } else
              return Container();
          },
          future: getData(),
        ),
      ),
    );
  }
}
