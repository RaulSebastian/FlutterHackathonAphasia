import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_tts/flutter_tts.dart';

class TtsWidget extends StatelessWidget {
  TtsWidget({Key key, this.listenableText}) : super(key: key);

  final String listenableText;

  @override
  Widget build(BuildContext context) {
    FlutterTts flutterTts = FlutterTts();
    
    return
      IconButton(
        icon: Icon(Icons.volume_up),
        tooltip: 'Listen',
        onPressed: () async {
          await flutterTts.setLanguage("en-US");
          await flutterTts.setSpeechRate(1.0);
          await flutterTts.setVolume(1.0);
          await flutterTts.setPitch(1.0);
          await flutterTts.speak(listenableText);
        },
      );
  }

}