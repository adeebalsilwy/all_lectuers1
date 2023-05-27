import 'package:flutter/material.dart';

void main() => runApp(HomeScreen_ReturnEx_Roq());

class HomeScreen_ReturnEx_Roq extends StatelessWidget {
  //--> const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Returning Data Roq App',
        routes: {PageThree_Roq.RouteName3:(context)=>PageThree_Roq()},
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Returning Data Roq App'),
          ),
          body: Center(
            child: SelectionButton(),
          ),
        ));
  }
}

class SelectionButton extends StatelessWidget {
  // --> const SelectionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
           /* onPressed: () {
              _navigateAndDisplaySelection(context);
            },*/
             onPressed: () async {
              String result=await Navigator.push(
                context,
                   MaterialPageRoute(builder: (context) => //-->const
                SelectionScreen()),
              ); //_navigateAndDisplaySelection(context);
            },
            child:
                const Text('Return with Pick an option from next page! Way 1'),
          ),
          ElevatedButton(
            onPressed: () {
              // Navigator.push<T> returns a Future<T>, which is the
              // return value of the pushed route when it's popped.
              Navigator.pushNamed(context, PageThree_Roq.RouteName3)
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
            child:
                const Text('Return with Pick an option from next page! Way 2'),
          ),
        ],
      ),
    );
  }

  // A method that launches the SelectionScreen and awaits the result from
  // Navigator.pop.
  void _navigateAndDisplaySelection(BuildContext context) async {
    // Navigator.push returns a Future that completes after calling
    // Navigator.pop on the Selection Screen.
    final String result = await Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => //-->const
              SelectionScreen()),
    );

    // After the Selection Screen returns a result, hide any previous snackbars
    // and show the new result.
    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text('$result')));
  }
}

class SelectionScreen extends StatelessWidget {
  //-->const SelectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pick an option'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  // Close the screen and return "Yep!" as the result.
                  Navigator.pop(context, 'Yep!');
                },
                child: const Text('Yep!'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  // Close the screen and return "Nope." as the result.
                  Navigator.pop(context, 'Nope.');
                },
                child: const Text('Nope.'),
              ),
            )
          ],
        ),
      ),
    );
  }
}

///////////////////

class PageThree_Roq extends StatelessWidget {
  const PageThree_Roq({Key? key}) : super(key: key);
  static const RouteName3 = '/PageThree_Roq';

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
                // Pops until reaching a route with that route name.
                ////// Way 1
                //Navigator.popUntil(context, ModalRoute.withName(Navigator.defaultRouteName),);
                ////// Way 2
                Navigator.of(context).popUntil((route) => route.isFirst);
              },
              child: const Text('Go home'),
            ),
          ],
        ),
      ),
    );
  }
}
