import 'package:flutter/material.dart';

import 'package:math_expressions/math_expressions.dart ';

class ex4_2 extends StatefulWidget {
  const ex4_2({Key? key}) : super(key: key);
  static const rout_name = "/ex4_2";

  @override
  State<ex4_2> createState() => _ex4_2State();
}

class _ex4_2State extends State<ex4_2> {
  String eqiation = "0";
  String resilt = "0";
  String expression = "";
  double equationFontsize = 38;
  double resultFontsize = 48;

  buttonPress(String buttontext) {
    setState(() {
      if (buttontext == "C") {
        eqiation = "0";
        resilt = "0";
        equationFontsize = 38;
        resultFontsize = 48;
      } else if (buttontext == "?") {
        equationFontsize = 38;
        resultFontsize = 48;
        eqiation = eqiation.substring(0, eqiation.length - 1);
        if (eqiation == "") {
          eqiation = "0";
        }
      } else if (buttontext == "=") {
        equationFontsize = 38;
        resultFontsize = 48;
        expression = eqiation;
        expression = expression.replaceAll('×', '*');
        expression = expression.replaceAll('÷', '/');
        try {
          Parser p = Parser();
          Expression exp = p.parse(expression);
          ContextModel cm = ContextModel();
          resilt = "${exp.evaluate(EvaluationType.REAL, cm)}";
        } catch (e) {
          resilt = "erorr ${e.toString()}";
        }
      } else {
        equationFontsize = 38;
        resultFontsize = 48;
        if (eqiation == "0") {
          eqiation = buttontext;
        } else {
          eqiation = eqiation + buttontext;
        }
      }
    });
  }

  Widget buildButton(
      String buttonText, double buttonHeaith, Color buttonColor) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1 * buttonHeaith,
      color: buttonColor,
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(3),
            side: BorderSide(
                color: Colors.white, width: 1, style: BorderStyle.solid),
          ),
          padding: EdgeInsets.all(16),
        ),
        onPressed: () => buttonPress(buttonText),
        child: Text(
          buttonText,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.normal,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calcutor '),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
            child: Text(
              eqiation,
              style: TextStyle(
                fontSize: equationFontsize,
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.fromLTRB(10, 30, 10, 0),
            child: Text(
              resilt,
              style: TextStyle(
                fontSize: resultFontsize,
              ),
            ),
          ),
          Expanded(child: Divider()),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * .75,
                child: Table(
                  children: [
                    TableRow(children: [
                      buildButton("C", 1, Colors.redAccent),
                      buildButton("?", 1, Colors.blue),
                      buildButton("÷", 1, Colors.blue),
                    ]),
                    TableRow(children: [
                      buildButton("7", 1, Colors.black87),
                      buildButton("8", 1, Colors.black87),
                      buildButton("9", 1, Colors.black87),
                    ]),
                    TableRow(children: [
                      buildButton("4", 1, Colors.black87),
                      buildButton("5", 1, Colors.black87),
                      buildButton("6", 1, Colors.black87),
                    ]),
                    TableRow(children: [
                      buildButton("1", 1, Colors.black87),
                      buildButton("2", 1, Colors.black87),
                      buildButton("3", 1, Colors.black87),
                    ]),
                    TableRow(children: [
                      buildButton(".", 1, Colors.black87),
                      buildButton("0", 1, Colors.black87),
                      buildButton("00", 1, Colors.black87),
                    ])
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.25,
                child: Table(
                  children: [
                    TableRow(children: [
                      buildButton("×", 1, Colors.blue),
                    ]),
                    TableRow(children: [
                      buildButton("-", 1, Colors.blue),
                    ]),
                    TableRow(children: [
                      buildButton("+", 1, Colors.blue),
                    ]),
                    TableRow(children: [
                      buildButton("=", 1, Colors.redAccent),
                    ])
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
