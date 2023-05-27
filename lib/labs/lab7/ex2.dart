import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class ex6_2 extends StatelessWidget {
  const ex6_2({Key? key}) : super(key: key);
  static const rout_name = "/ex6_2";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'hellodeebo',
        debugShowCheckedModeBanner: false,
        home: Routes_hq(),
        routes: {
          Routes_hq.KRouteName: (context) => Routes_hq(),
          PageTwo_hq.RouteName2: (context) => PageTwo_hq(),
          PageThree_hq.RouteName3: (context) => PageThree_hq(),
        });
  }
}

class Routes_hq extends StatelessWidget {
  const Routes_hq({Key? key}) : super(key: key);

  static const KRouteName = '/Routes_hq';
  @override
  Widget build(BuildContext context) {
    debugPrint('RouteName=${ModalRoute.of(context)?.settings.name}');
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Page 1'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, PageTwo_hq.RouteName2);
          },
          child: const Text('Go to page two'),
        ),
      ),
    );
  }
}

class PageTwo_hq extends StatelessWidget {
  const PageTwo_hq({Key? key}) : super(key: key);
  static const RouteName2 = '/PageTwo_hq';
  @override
  Widget build(BuildContext context) {
    debugPrint('RouteName=${ModalRoute.of(context)?.settings.name}');
    return Scaffold(
        appBar: AppBar(
          title: const Text('Page 2'),
          elevation: 1.0,
        ),
        body: Center(
            child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, PageThree_hq.RouteName3)
                .then((returnVal) {
              if (returnVal != null) {
                ScaffoldMessenger.of(context).removeCurrentSnackBar();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('You clicked: $returnVal'),
                    action: SnackBarAction(
                      label: 'OK',
                      onPressed: () {},
                    ),
                  ),
                );
              }
            });
          },
          child: const Text("go to page 3"),
        )));
  }
}

class PageThree_hq extends StatelessWidget {
  const PageThree_hq({Key? key}) : super(key: key);
  static const RouteName3 = '/PageThree_hq';
  @override
  Widget build(BuildContext context) {
    debugPrint('RouteName=${ModalRoute.of(context)?.settings.name}');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Last page'),
        elevation: 2.0,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: const CircleAvatar(child: Text('1')),
              title: const Text('user1@example.com'),
              onTap: () => Navigator.pop(context, 'user1@example.com'),
            ),
            ListTile(
              leading: const CircleAvatar(child: Text('2')),
              title: const Text('user2@example.com'),
              onTap: () => Navigator.pop(context, 'user2@example.com'),
            ),
            ListTile(
              leading: const CircleAvatar(child: Text('3')),
              title: const Text('user3@example.com'),
              onTap: () => Navigator.pop(context, 'user3@example.com'),
            ),
            const Divider(),
            MaterialButton(
              onPressed: () {
                Navigator.of(context).popUntil((route) => route.isFirst);
              },
              child: const Text('go home'),
            ),
          ],
        ),
      ),
    );
  }
}
