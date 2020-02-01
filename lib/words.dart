import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hackathon_aphasia/word-details.dart';
// import 'package:flutter_image/network.dart';
import 'package:tinder_card/tinder_card.dart';

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
      body: TinderSwapCard(
              demoProfiles: listOfWords,
              myCallback: (decision) {},
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

//dummy data
final List<WordDetails> listOfWords = [
  new WordDetails(
    photos: [
      "assets/images/brain.jpg",
    ],
    name: "Brain",
    bio: "The Brain of Pinky & the Brain",
  ),
  new WordDetails(
    photos: [
      "assets/images/pinky.jpg",
    ],
    name: "Pinky",
    bio: "Piny of Pinky & the Brain",
  ),
];