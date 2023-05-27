import 'package:flutter/material.dart';

void main() => runApp(Animate_a_widget_across_screens_Roq_Ex());

class Animate_a_widget_across_screens_Roq_Ex extends StatelessWidget {
  //-->const HeroApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigatio with Animation Roq',
      home: MainScreen_Roq(),
    );
  }
}

class MainScreen_Roq extends StatelessWidget {
  //-->const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Screen_Roq'),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) {
                return DetailScreen_Roq();
              }));
        },
        child: Hero(
          tag: 'imageHero_roq',
          //child: Image.network('https://picsum.photos/250?image=9',
          child: Image.asset('Image_roq/roq_2.jpg',
              width: 100.0, height: 100.0),
        ),
      ),
    );
  }
}

class DetailScreen_Roq extends StatelessWidget {
  //-->const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Center(
          child: Hero(
            tag: 'imageHero_roq',
            //child: Image.network('https://picsum.photos/250?image=9',),
            child: Image.asset('Image_roq/roq_2.jpg',
                width: 200.0, height: 200.0),
          ),
        ),
      ),
    );
  }
}
