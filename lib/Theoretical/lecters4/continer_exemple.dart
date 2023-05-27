// ignore_for_file: camel_case_types, constant_identifier_names

import 'package:flutter/material.dart';

class Layout_Screen extends StatelessWidget {
  const Layout_Screen({super.key});
  static const rout_name = '/Layout_Screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        title: Text(
          'تطبيق تصميم الحاويات ',
          style: const TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(.0),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 170.0,
                  margin: const EdgeInsets.all(25),
                  padding: const EdgeInsets.all(35),
                  alignment: Alignment.center,
                  transform: Matrix4.rotationZ(0.1),
                  decoration: BoxDecoration(
                    color: Colors.amberAccent,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: Colors.cyanAccent,
                      width: 5,
                      style: BorderStyle.solid,
                    ),
                  ),
                  child: Expanded(
                    flex: 1,
                    child: Text(
                      'مرحبا بكم في اول تطبيق ',
                      style: TextStyle(
                        fontSize: 25,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Column(children: [
                  Container(
                    color: Colors.blue,
                    alignment: Alignment.center,
                    width: 300,
                    height: 40,
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        maxHeight: 100,
                        maxWidth: double.infinity,
                        minHeight: 30,
                        minWidth: 100,
                      ),
                      child: FittedBox(
                        child: Container(
                          child: Container(
                            decoration: BoxDecoration(
                              boxShadow: const [
                                BoxShadow(
                                    color: Colors.cyan,
                                    offset: Offset(6.3, 3.3))
                              ],
                              border:
                                  Border.all(width: 3, color: Colors.redAccent),
                            ),
                            child: Text(
                              'مرحبا  انا اديب الصلوي كيف حالكم ',
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ]),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Card(
                    color: Colors.blueAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    elevation: 40,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ListTile(
                          iconColor: Colors.white,
                          textColor: Colors.white,
                          leading: Icon(
                            Icons.male,
                            size: 60,
                          ),
                          title: Text(
                            'اديب الصلوي',
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                          subtitle: Text(
                            'مبرمج ومطور انظمه ',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Card(
                    color: Colors.blueAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    elevation: 40,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ListTile(
                          iconColor: Colors.white,
                          textColor: Colors.white,
                          leading: Icon(
                            Icons.music_note,
                            size: 60,
                          ),
                          title: Text(
                            'واتنسيت كاني مجيت ',
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                          subtitle: Text(
                            'اغاني مسلسم',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Center(
                          child: ButtonBar(
                            children: [
                              IconButton(
                                onPressed: () {},
                                iconSize: 60,
                                icon: Icon(
                                  Icons.skip_previous_outlined,
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                iconSize: 60,
                                icon: Icon(
                                  Icons.play_arrow,
                                ),
                              ),
                              IconButton(
                                iconSize: 60,
                                onPressed: () {},
                                // label: Text("ايقاف موقت"),
                                icon: Icon(
                                  Icons.skip_next,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
