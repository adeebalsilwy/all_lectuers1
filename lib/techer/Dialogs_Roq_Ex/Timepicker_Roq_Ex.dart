import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(Timepicker_Roq_Ex());
}
class Timepicker_Roq_Ex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TimePicker Roq App',
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
  TimeOfDay selectedTime_roq = TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TimePicker Roq App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                _selectTime(context);
              },
              child: Text("Choose Time"),
            ),
            Text("${selectedTime_roq.hour}:${selectedTime_roq.minute}"),
          ],
        ),
      ),
    );
  }
  _selectTime(BuildContext context) async {
    final TimeOfDay? timeOfDay = await showTimePicker(
      context: context,
      initialTime: selectedTime_roq,
      initialEntryMode: TimePickerEntryMode.input,
      //How to show a Text Input instead of dialer in timepicker
      //initialEntryMode: TimePickerEntryMode.input,
       //How to change help text, cancel and ok buttons text of timepicker
        confirmText: "CONFIRM",
        cancelText: "NOT NOW",
        helpText: "BOOKING TIME",

      /*How to change help text, cancel and ok buttons text of timepicker
showTimePicker(
        context: context,
        initialTime: selectedTime,
        initialEntryMode: TimePickerEntryMode.dial,
        confirmText: "CONFIRM",
        cancelText: "NOT NOW",
        helpText: "BOOKING TIME"
      );
*/
      //------------------------

    );
    if(timeOfDay != null && timeOfDay != selectedTime_roq)
    {
      setState(() {
        selectedTime_roq = timeOfDay;
      });
    }
  }
}
