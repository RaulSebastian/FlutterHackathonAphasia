import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hackathon_aphasia/tts.dart';

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
            child:
                Numbers()) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}

class Numbers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final results = List.generate(10, (index) {
      return Center(
        child: Row(children: <Widget>[
          Text(index.toString(), 
            style: Theme.of(context).textTheme.display3),
          TtsWidget(listenableText: index.toString(), language: "en-us",)
        ]),
      );
    });

    return GridView.count(
        // Create a grid with 2 columns. If you change the scrollDirection to
        // horizontal, this produces 2 rows.
        crossAxisCount: 3,
        children: results);
  }
}
