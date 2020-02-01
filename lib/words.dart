import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_image/network.dart';


class WordsPage extends StatefulWidget {
  WordsPage({Key key, this.title}) : super(key: key);

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  String widgetTitle = "Learn words";

  @override
  WordsPageState createState() => WordsPageState();
}

class WordsPageState extends State<WordsPage> {

  DateTime now = DateTime.now();

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
            Text(
              'Pinky',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            Spacer(),
            new Image(
              image: new NetworkImageWithRetry('https://i.pinimg.com/474x/4d/68/fc/4d68fceb4529a5c8c07b6c78507a7d55--the-brain-sticker.jpg'),
            ),
            Spacer(),
            Row(
              children: <Widget>[
                FlatButton(
                  child: Text("OK"),
                  color: Colors.blue,
                  textColor: Colors.white,
                  disabledColor: Colors.grey,
                  disabledTextColor: Colors.black,
                  padding: EdgeInsets.all(8.0),
                  splashColor: Colors.blueAccent,
                  onPressed: () {},
                ),
              ],
            ),
//            BasicDateField(),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Say',
        child: Icon(Icons.play_arrow),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

/*
class BasicDateField extends StatelessWidget {
  final format = DateFormat("yyyy-MM-dd");
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Text('Today is the'),
      DateTimeField(
        format: format,
        onShowPicker: (context, currentValue) {
          return showDatePicker(
              context: context,
              firstDate: DateTime(1900),
              initialDate: currentValue ?? DateTime.now(),
              lastDate: DateTime(2100));
        },
      ),
    ]);
  }
}
*/