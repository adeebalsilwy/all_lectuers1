import 'package:flutter/material.dart';

void main() => runApp(Main_Page_Pass_Data_Roq());

class Main_Page_Pass_Data_Roq extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        ExtractArgumentsScreen_by_ModalRoute.routeName: (context) =>
            ExtractArgumentsScreen_by_ModalRoute(),
      },
      // Provide a function to handle named routes.
      // Use this function to identify the named
      // route being pushed, and create the correct
      // Screen.
      onGenerateRoute: (settings) {
        // If you push the ExtractArgumentsScreen_by_onGenerateRoute route
        if (settings.name ==
            ExtractArgumentsScreen_by_onGenerateRoute.routeName) {
          // Cast the arguments to the correct
          // type: ScreenArguments.
          final  ScreenArguments args = settings.arguments as ScreenArguments;

          // Then, extract the required data from
          // the arguments and pass the data to the
          // correct screen.
          return MaterialPageRoute(
            builder: (context) {
              return ExtractArgumentsScreen_by_onGenerateRoute(
                title_roq: args.title,
                message_roq: args.message,
              );
            },
          );
        }
        // The code only supports
        // ExtractArgumentsScreen_by_onGenerateRoute.routeName right now.
        // Other values need to be implemented if we
        // add them. The assertion here will help remind
        // us of that higher up in the call stack, since
        // this assertion would otherwise fire somewhere
        // in the framework.
        assert(false, 'Need to implement ${settings.name}');
        return null;
      },
      title: 'Navigation with Arguments Roq',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  //const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen Roq'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // A button that navigates to a named route.
            // The named route extracts the arguments
            // by itself.
            ElevatedButton(
              onPressed: () {
                // When the user taps the button,
                // navigate to a named route and
                // provide the arguments as an optional
                // parameter.
                Navigator.pushNamed(
                  context,
                  ExtractArgumentsScreen_by_ModalRoute.routeName,
                  arguments: ScreenArguments(
                    'Extract Arguments Roq App',
                    'This message is extracted with ModalRoute method.',
                  ),
                );
              },
              child: const Text('Navigate to screen that extracts arguments'),
            ),
            // A button that navigates to a named route.
            // For this route, extract the arguments in
            // the onGenerateRoute function and pass them
            // to the screen.
            ElevatedButton(
              onPressed: () {
                // When the user taps the button, navigate
                // to a named route and provide the arguments
                // as an optional parameter.
                Navigator.pushNamed(
                  context,
                  ExtractArgumentsScreen_by_onGenerateRoute
                      .routeName,
                  arguments: ScreenArguments(
                    'Accept Arguments Roq App',
                    'This message is extracted in the onGenerateRoute.',
                  ),
                );
              },
              child: const Text('Navigate to a named that accepts arguments'),
            ),
          ],
        ),
      ),
    );
  }
}

// A Widget that extracts the necessary arguments from
// the ModalRoute.
class ExtractArgumentsScreen_by_ModalRoute extends StatelessWidget {
  String? gjjj;
  //const ExtractArgumentsScreen({Key? key}) : super(key: key);

  static const routeName = '/extractArguments_by_ModalRoute';

  @override
  Widget build(BuildContext context) {
    // Extract the arguments from the current ModalRoute
    // settings and cast them as ScreenArguments.
    // ----------------------Code of New Flutter SDK--------------------
    final ScreenArguments args =
        ModalRoute.of(context)!.settings.arguments as ScreenArguments;
    // <----------- final args = ModalRoute.of(context).settings.arguments as ScreenArguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(args.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Text(
            args.message,
            style: TextStyle(fontSize: 25),
          ),
        ),
      ),
    );
  }
}

// A Widget that accepts the necessary arguments via the
// constructor.
class ExtractArgumentsScreen_by_onGenerateRoute extends StatelessWidget {
  static const String routeName = '/passArguments_by_onGenerateRoute';

  final String title_roq;
  final String message_roq;

  // This Widget accepts the arguments as constructor
  // parameters. It does not extract the arguments from
  // the ModalRoute.
  //
  // The arguments are extracted by the onGenerateRoute
  // function provided to the MaterialApp widget.
  const ExtractArgumentsScreen_by_onGenerateRoute({
    //-->Key? key,
    Key? key,
    required this.title_roq,
    required this.message_roq,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title_roq),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Text(
              message_roq,
              style: TextStyle(fontSize: 25),
            ),
          ),
        ));
  }
}

// You can pass any object to the arguments parameter.
// In this example, create a class that contains both
// a customizable title and message.
class ScreenArguments {
  final String title;
  final String message;

  ScreenArguments(this.title, this.message);
}
