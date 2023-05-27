import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Toast_screen extends StatefulWidget {
  const Toast_screen({Key? key}) : super(key: key);
  static const rout_name = '/Toast_screen';

  @override
  State<Toast_screen> createState() => _Toast_screenState();
}

class _Toast_screenState extends State<Toast_screen> {
  late FToast fToast;

  @override
  void initState() {
    super.initState();
    fToast = FToast();
    fToast.init(context);
  }

  Widget customToast = Container(
    padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25.0),
      color: Colors.red,
    ),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: const [
        Icon(Icons.android),
        SizedBox(
          width: 12.0,
        ),
        Text(
          "This is a Custom Toast...",
          style: TextStyle(color: Colors.white),
        ),
      ],
    ),
  );

  _showCustomToast() {
    fToast.showToast(
      child: customToast,
      gravity: ToastGravity.BOTTOM,
      toastDuration: const Duration(seconds: 2),
    );
  }

  _showDefaultToast() {
    Fluttertoast.showToast(
        msg: "This is Default Toast...", toastLength: Toast.LENGTH_LONG);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            top: true,
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                      margin: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                      child: ElevatedButton(
                        child: const Text('Show Custom Toast'),
                        onPressed: () => _showCustomToast(),
                      )),
                  Container(
                      margin: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                      child: ElevatedButton(
                        child: const Text('Show Default Toast'),
                        onPressed: () => _showDefaultToast(),
                      ))
                ],
              ),
            )));
  }
}
