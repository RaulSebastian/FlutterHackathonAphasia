import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_tts/flutter_tts.dart';

class TtsWidget extends StatelessWidget {
  TtsWidget({Key key, this.listenableText, this.language = 'de-DE'}) : super(key: key);

  final String listenableText;
  final String language;

  @override
  Widget build(BuildContext context) {
    
    return
      IconButton(
        icon: Icon(Icons.volume_up),
        tooltip: 'Listen',
        onPressed: () async {
          FlutterTts flutterTts = FlutterTts();
          
          flutterTts.setLanguage(language);
          flutterTts.setSpeechRate(0.4);
          flutterTts.setVolume(1.0);
          flutterTts.setPitch(1.0);
          await flutterTts.stop();
          await flutterTts.speak(listenableText);
        },
      );
  }

}