import 'package:flutter/material.dart';

class ex6_1 extends StatelessWidget {
  const ex6_1({Key? key}) : super(key: key);
  static const rout_name = "/ex6_1";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'hellodeebo',
      debugShowCheckedModeBanner: false,
      home: const hq_home(),
      routes: {
        '/hello': (context) => const hello(),
        '/contact': (context) => const contact(),
        '/about': (context) => const about()
      },
    );
  }
}

class hq_home extends StatefulWidget {
  const hq_home({Key? key}) : super(key: key);

  @override
  State<hq_home> createState() => _hq_homeState();
}

class _hq_homeState extends State<hq_home> {
  @override
  var selectedItem = '';
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Routing hq App"),
        centerTitle: true,
        actions: [
          PopupMenuButton(onSelected: (value) {
            setState(() {
              selectedItem = value.toString();
            });
            print(value);
            Navigator.pushNamed(context, value.toString());
          }, itemBuilder: (BuildContext bc) {
            return const [
              PopupMenuItem(
                child: Text("Hello Page"),
                value: '/hello',
              ),
              PopupMenuItem(
                child: Text("About Page"),
                value: '/about',
              ),
              PopupMenuItem(
                child: Text("Contact Page"),
                value: '/contact',
              )
            ];
          })
        ],
      ),
      body: Center(
        child: Text(selectedItem),
      ),
    );
  }
}

class hello extends StatelessWidget {
  const hello({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("hello")),
    );
  }
}

class contact extends StatelessWidget {
  const contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("contact")),
    );
  }
}

class about extends StatelessWidget {
  const about({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("about")),
    );
  }
}
