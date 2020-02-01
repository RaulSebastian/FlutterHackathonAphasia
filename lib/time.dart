import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hackathon_aphasia/tts.dart';
import 'package:intl/intl.dart';


class TimePage extends StatefulWidget {
  TimePage({Key key, this.title}) : super(key: key);

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  String widgetTitle = "Show times";

  @override
  TimePageState createState() => TimePageState();
}

class TimePageState extends State<TimePage> {

  TimeOfDay timePicked = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.widgetTitle),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
//            BasicDateField(),


            ListTile(
              title: Text(
                formatTimeOfDay(timePicked),
                style: Theme.of(context).textTheme.display2,
              ),
              trailing: TtsWidget(listenableText : formatTimeOfDay(timePicked), language: "en-us",),
              onTap: () {__changeTime(context);},
            ),
            new FlatButton(
              onPressed: () {
                __changeTime(context);
              },
              child: Text(
                  "Change Time"
              ),
            ),
          ],
        ),
      ),
    );
  }

  String formatTimeOfDay(TimeOfDay tod) {
    final now = new DateTime.now();
    final dt = DateTime(now.year, now.month, now.day, tod.hour, tod.minute);
    return DateFormat('HH:mm').format(dt);
  }

  __changeTime(BuildContext context) async {
    final TimeOfDay d = await showTimePicker(context: context, initialTime: timePicked);
    if (d != null) //if the user has selected a date
      setState(() {
        // we format the selected date and assign it to the state variable
        timePicked = d;
      });

  }
}
