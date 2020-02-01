import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
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
        new FlatButton(
            onPressed: () {__changeDate();},
            child: Text(
              DateFormat('yyyy-MM-dd').format(pickedDate),
              style: Theme.of(context).textTheme.display2,
            ),
        ),
          new FlatButton(
            onPressed: () {
              __changeDate();
            },
            child: Text(
              "Change Date"
            ),
          ),
            Text("The Date is a:"),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(

        tooltip: 'Play',
        child: Icon(Icons.play_arrow),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  __changeDate(){
    DatePicker.showDatePicker(context,
        showTitleActions: true,
        minTime: DateTime(1900),
        maxTime: DateTime(3000), onChanged: (date) {
          print('change $date');
        }, onConfirm: (date) {

          setState(() {
            pickedDate = date;
          });
        }, currentTime: pickedDate, locale: LocaleType.en);
  }
}


