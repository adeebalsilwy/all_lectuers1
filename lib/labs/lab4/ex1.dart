import 'package:flutter/material.dart';

class ex4_1 extends StatefulWidget {
  const ex4_1({super.key});
  static const rout_name = "/ex4_1";

  @override
  frm_state createState() => frm_state();
}

class frm_state extends State<ex4_1> {
// Define a key to access the form
  final _formKey = GlobalKey<FormState>();
  String _userEmail = '';
  String _userName = '';
  String _password = '';
  String _confirmPassword = '';
  void _trySubmitForm() {
    final isValid = _formKey.currentState!.validate();
    if (isValid) {
      print('Everything looks good!');
      print(_userEmail);
      print(_userName);
      print(_password);
      print(_confirmPassword);
    }
  }

  @override
  Widget build(BuildContext context) {
    var selectedGender = '';
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: SafeArea(
          child: Container(
            color: Colors.lightBlue,
            alignment: Alignment.center,
            child: Center(
              child: Card(
                margin: const EdgeInsets.symmetric(horizontal: 35),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(labelText: 'Email'),
                          validator: (value) {
                            if (value!.trim().isEmpty) {
                              return 'Please enter your email address';
                            }

                            if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                              return 'Please enter a valid email address';
                            }
                            return null;
                          },
                          onChanged: (value) => _userEmail = value,
                        ),

                        TextFormField(
                          decoration:
                              const InputDecoration(labelText: 'Username'),
                          validator: (String? value) {
                            if (value!.trim().isEmpty) {
                              return 'This field is required';
                            }
                            if (value.trim().length < 4) {
                              return 'Username must be at least 4 characters in length';
                            }
                            return null;
                          },
                          onChanged: (value) => _userName = value,
                        ),

                        TextFormField(
                          decoration:
                              const InputDecoration(labelText: 'Password'),
                          obscureText: true,
                          validator: (value) {
                            if (value!.trim().isEmpty) {
                              return 'This field is required';
                            }
                            if (value.trim().length < 8) {
                              return 'Password must be at least 8 characters in length';
                            }
                            return null;
                          },
                          onChanged: (value) => _password = value,
                        ),

                        /// Confirm Password
                        TextFormField(
                          decoration: const InputDecoration(
                              labelText: 'Confirm Password'),
                          obscureText: true,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'This field is required';
                            }
                            if (value != _password) {
                              return 'Confimation password does not match the entered password';
                            }
                            return null;
                          },
                          onChanged: (value) => _confirmPassword = value,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Please let us know your gender:'),
                            ListTile(
                              leading: Radio(
                                value: 'male',
                                groupValue: selectedGender,
                                onChanged: (Object? value) {
                                  setState(() {
                                    selectedGender = value.toString();
                                  });
                                },
                              ),
                              title: const Text('Male'),
                            ),
                            ListTile(
                              leading: Radio(
                                  value: 'female',
                                  groupValue: selectedGender,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedGender = value.toString();
                                    });
                                  }),
                              title: const Text('female'),
                            ),
                          ],
                        ),

                        const SizedBox(height: 20),
                        Container(
                            alignment: Alignment.centerRight,
                            child: OutlinedButton(
                                onPressed: _trySubmitForm,
                                child: const Text('Sign Up')))
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
