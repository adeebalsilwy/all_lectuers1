import 'package:flutter/material.dart';

class GridView_ex extends StatelessWidget {
  static const rout_name = "/GridView_ex";

  const GridView_ex() ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid VIew '),
      ),
      body:GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 4.0,
        mainAxisSpacing: 8.0,
        children:
          List.generate(choices.length, (index){
return Center(
  child: SelectCard(chois: choices[index],),
);
          }
          )

      ),

    );
  }

}
class Chois{
  final String title;
  final IconData icon;
  const Chois({required this.title,required this.icon});
}

const List<Chois> choices=const <Chois>[
  const Chois(title: 'Home', icon: Icons.home),
  const Chois(title: 'Contact', icon: Icons.contact_mail_outlined),
  const Chois(title: 'Map', icon: Icons.map),
  const Chois(title: 'phone', icon: Icons.phone),
  const Chois(title: 'Camera', icon: Icons.camera),
  const Chois(title: 'setting', icon: Icons.settings),
  const Chois(title: 'albume', icon: Icons.photo_album),
  const Chois(title: 'Wifi', icon: Icons.wifi),

];
class SelectCard extends StatelessWidget {
final Chois chois ;
  const SelectCard( {Key? key,required this.chois}):super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle? textStyle=Theme.of(context).textTheme.bodyLarge;
    return  Card(
      color: Colors.yellowAccent,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                child: Icon(
                  chois.icon,
                  size: 50,
color: textStyle?.color,
                ),

            ),
            Text(chois.title,style: textStyle,)

          ],
        ),
      ),
    );
  }
}
