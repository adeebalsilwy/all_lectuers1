import 'package:flutter/material.dart';

class ListviewSparted extends StatefulWidget {
  static const rout_name = "/ListviewSparted";
  const ListviewSparted();

  @override
  _ListviewSpartedState createState() => _ListviewSpartedState();
}

class _ListviewSpartedState extends State<ListviewSparted> {
  final List<String> entris=<String>[
    'Items 1',
  ];
  @override
  void initState() {

    for(int i=0;i<20;i++){
      entris.add('Items ${i}');
    }
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List view '),
      ),
      body: ListView.separated(
           separatorBuilder: (BuildContext context, int index)=>Divider(
             thickness: 2,
           ),
        itemBuilder: (BuildContext context, int index) {
             return Container(
               color: Colors.deepOrange,
               child: ListTile(
                 leading: Container(
                   width: 48,
                   height: 48,
                   padding: EdgeInsets.symmetric(vertical: 4.0),
                   alignment: Alignment.center,
                   child: CircleAvatar(
                       child: Icon(Icons.person),
                     backgroundColor: Colors.white,
                   ),
                 ),
                 trailing: Icon(
                   Icons.more_vert,
                   color: Colors.white,
                 ),
                 title: Text(
                   'pesrson ${index+1}',
                   style: TextStyle(
                     color: Colors.white
                   ),
                 ),
                 subtitle: Text(
                   '${entris[index]}',
                   style: TextStyle(
                     color: Colors.white
                   ),
                 ),
                 onTap: ()=>null,
               ),
             );
        }, itemCount: entris.length,
      ),

    );
  }
}
