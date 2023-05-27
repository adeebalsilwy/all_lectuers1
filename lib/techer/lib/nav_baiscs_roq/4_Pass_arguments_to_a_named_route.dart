import 'package:flutter/material.dart';

void main() => runApp(Main_Page_Pass_Data_Roq());

class Main_Page_Pass_Data_Roq extends StatelessWidget {
  const Main_Page_Pass_Data_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color(0xFF02BB9F),
        primaryColorDark: const Color(0xFF167F67),
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(secondary: const Color(0xFF167F67)),
      ),
      debugShowCheckedModeBanner: false,

// Start the app with the "/" named route. In this case, the app starts on the Screen1_Ex3_Roq widget.
//  home:Screen1_Ex3_Roq(), //  OR
      initialRoute: '/',
      routes: {
// When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => Screen1_Ex3_Roq(),

        '/second_roq': (context) => Screen2_Ex3_Roq(),
        //Screen2_Ex3_Roq.scr3Route: (context) => Screen2_Ex3_Roq(),
        Screen3_Ex3_Roq.scr3Route: (context) => Screen3_Ex3_Roq(),
      },
    );
  }
}

///////////////////////////// First Page ///////

class Screen1_Ex3_Roq extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('First Screen Roq'),
        ),
        body: Center(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: Text(
                  textAlign: TextAlign.center,
                  "Go to Screen2 with send data by Way1",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 10)),
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    '/second_roq',
                    arguments: ScreenArguments(
                      'Ruqaih Salman',
                      99,
                    ),
                  );
                },
              ),
              //arg("Ruqaih Salman",99);
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                child: Text(
                  textAlign: TextAlign.center,
                  "Go to Screen3 with send data by Way2(arguments)",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.pushNamed(context,
                    Screen3_Ex3_Roq.scr3Route,
                    arguments: {
                      'name_roq': 'Ruqaih Salman',
                      'mark_roq': 99,
                    },
                  );
                },
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 10)),
              ),
            ],
          ),
        )));
  }
}

////////////////////////// Second Page ////////////////////////
class Screen2_Ex3_Roq extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //////////////////////////Recive Data from screen 1//////////////////////////////////////
    final ScreenArguments args_roq =
        ModalRoute.of(context)!.settings.arguments as ScreenArguments;
    return Scaffold(
        appBar: AppBar(title: Text(" Screen2 Roq")),
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            "The Data from Pre Page :\n",
            style: TextStyle(fontSize: 35, color: Colors.black),
          ),
          Divider(),
          Text(
            "Name : ${args_roq.Name_roq}",
            style: TextStyle(fontSize: 30, color: Colors.purple),
          ),
          Text(
            "Mark : ${args_roq.Mark_roq}",
            style: TextStyle(fontSize: 30, color: Colors.purple),
          ),
        ])));
  }
}

////////////////////////////// Page 3
class Screen3_Ex3_Roq extends StatelessWidget {
  const Screen3_Ex3_Roq({Key? key}) : super(key: key);
  static const String scr3Route = "/screen3_roq";

  @override
  Widget build(BuildContext context) {
    final Map<String, Object> routeargs_roq =
        ModalRoute.of(context)!.settings.arguments as Map<String, Object>;
    return Scaffold(
        appBar: AppBar(title: Text(" Screen2 Roq")),
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text("The Data from onother Page :\n"),
          Divider(),
          Text(
            "Name :${routeargs_roq['name_roq']}",
            style: TextStyle(fontSize: 35, color: Colors.purple),
          ),
          Text(
            "Mark : ${routeargs_roq['mark_roq']}",
            style: TextStyle(fontSize: 35, color: Colors.purple),
          ),
        ])));
  }
}

class ScreenArguments {
  final String Name_roq;
  final int Mark_roq;

  ScreenArguments(this.Name_roq, this.Mark_roq);
}
