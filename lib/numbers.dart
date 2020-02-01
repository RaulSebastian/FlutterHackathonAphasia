import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

class NumbersPage extends StatefulWidget {
  NumbersPage({Key key, this.title}) : super(key: key);

  final String title;

  String widgetTitle = "Numbers";

  @override
  NumbersPageState createState() => NumbersPageState();
}

class NumbersPageState extends State<NumbersPage> {
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
          children: <Widget>[
            BasicDateField(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Increment',
        child: Icon(Icons.play_arrow),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class BasicDateField extends StatelessWidget {
  final format = DateFormat("yyyy-MM-dd");
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      FlatButton(
          onPressed: () {

          },
          child: Text(
            "1",
          )
          
          )
    ]);
  }
}
