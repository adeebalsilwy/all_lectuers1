import 'package:flutter/material.dart';
void main()
{
  runApp(Datepicker_Roq_Ex());
}
class Datepicker_Roq_Ex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Datepicker Roq App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState()
  {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  String date = "";
  DateTime selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Datepicker Roq App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                _selectDate(context);
              },
              child: Text("Choose Date"),
            ),
            Text("${selectedDate.day}/${selectedDate.month}/${selectedDate.year}")
          ],
        ),
      ),
    );
  }

  _selectDate(BuildContext context) async {
    final DateTime? selected = await
    //How to show a Text Input instead of calendar in datepicker
    /*showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2010),
        lastDate: DateTime(2025),
        initialEntryMode: DatePickerEntryMode.input
    );*/
//////////////////////////////////////////////////////////////
    showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2010),
      lastDate: DateTime(2025),
      //How to change help text, cancel and ok buttons text of datepicker
        /*helpText: "SELECT BOOKING DATE",
        cancelText: "NOT NOW",
        confirmText: "BOOK NOW",*/
        //How to change label and hint text of a datepicker
      fieldHintText: "DATE/MONTH/YEAR",
      fieldLabelText: "BOOKING DATE ",
      //How to change format error and invalid error text
      errorFormatText: "Enter a Valid Date",
        errorInvalidText: "Date Out of Range",
        //How to display year first in datepicker
        initialDatePickerMode: DatePickerMode.day,
        initialEntryMode: DatePickerEntryMode.input
        //How to show a Text Input instead of calendar in datepicker
    );

    if (selected != null && selected != selectedDate)
      setState(() {
        selectedDate = selected;
      });
  }
}
