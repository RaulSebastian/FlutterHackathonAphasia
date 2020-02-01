import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hackathon_aphasia/tts.dart';
import 'package:intl/intl.dart';



class CalendarPage extends StatefulWidget {
  CalendarPage({Key key, this.title}) : super(key: key);


  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  String widgetTitle = "Calendar";

  @override
  CalendarPageState createState() => CalendarPageState();
}

class CalendarPageState extends State<CalendarPage> {

  DateTime pickedDate = DateTime.now();

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
            ListTile(
                title: Text(
                  DateFormat('yyyy-MM-dd').format(pickedDate),
                  style: Theme.of(context).textTheme.display2,
                ),
                trailing: TtsWidget(listenableText : DateFormat('yyyy-MM-dd').format(pickedDate), language: "en-us",),
              onTap: () {__changeDate(context);},
            ),
          new FlatButton(
            onPressed: () {
              __changeDate(context);
            },
            child: Text(
              "Change Date"
            ),
          ),
            Text("The Selected Date is a:"),
            ListTile(
              title: Text(
                  DateFormat('EEEE').format(pickedDate),
                  style: Theme.of(context).textTheme.display2,
                ),
              trailing: TtsWidget(listenableText : DateFormat('EEEE').format(pickedDate), language: "en-us",)
            ),

          ],
        ),
      ),

    );
  }

  String __getDateText(DateTime time){

  }
  __changeDate(BuildContext context) async {
    final DateTime d = await showDatePicker( //we wait for the dialog to return
      context: context,
      initialDate: pickedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime(3000),
    );
    if (d != null) //if the user has selected a date
      setState(() {
        // we format the selected date and assign it to the state variable
        pickedDate = d;
      });

  }

}


