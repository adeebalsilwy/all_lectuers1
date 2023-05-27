// ignore_for_file: prefer_const_constructors, non_constant_identifier_Logis, must_be_immutable, camel_case_types, non_constant_identifier_names, avoid_print, unnecessary_brace_in_string_interps, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Login_screen extends StatefulWidget {
  const Login_screen({super.key});

  @override
  State<Login_screen> createState() => Text_Rach_Screen();
}

class Text_Rach_Screen extends State<Login_screen> {
  bool isshow = false;
  TextEditingController emali_control = TextEditingController();
  TextEditingController password_control = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'AppBarScreen',
        ),
      ),
      body: ListView(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Eng: ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                      color: Colors.purple,
                    ),
                  ),
                  WidgetSpan(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Icon(
                        Icons.manage_accounts,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  TextSpan(
                    text: 'Adeeb ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                      color: Colors.indigo,
                    ),
                  ),
                  TextSpan(
                    text: 'Alsilwy',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                      color: Colors.teal,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              //height: 300,
              child: Card(
                // color: Colors.grey[500],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)),
                elevation: 20,
                child: Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Column(
                    children: [
                      Text('Login Form',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.blueAccent,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        controller: emali_control,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'User Name',
                          hintText: 'Enter your user Name',
                          prefixIcon: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            child: Icon(
                              Icons.manage_accounts,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        controller: password_control,
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Password',
                          hintText: 'Enter your Password',
                          prefixIcon: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            child: Icon(
                              Icons.password,
                              color: Colors.blue,
                            ),
                          ),
                          suffixIcon: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            child: IconButton(
                              icon: Icon(
                                Icons.remove_red_eye_outlined,
                                color: Colors.blue,
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      RichText(
                          text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'don\'t  Have Acoount ? ',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: 'Sign Up',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      )),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton.icon(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    title: Text('login information'),
                                    content: Text(
                                      'user name =  ${emali_control.text}\n '
                                      'password =  ${password_control.text}',
                                    ),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text('Ok'),
                                      ),
                                    ],
                                  );
                                });

                            print("user name =  ${emali_control.text}");
                            print("password =  ${password_control.text}");
                          },
                          icon: Icon(
                            Icons.login,
                            color: Colors.white,
                          ),
                          label: Text(
                            'Sign In',
                            style: TextStyle(
                              //color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
