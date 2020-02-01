import 'package:flutter/material.dart';

class MainAppBar extends AppBar {
  @override
  AppBar build(BuildContext context) {
    return AppBar(
      // Here we take the value from the MyHomePage object that was created by
      // the App.build method, and use it to set our appbar title.
      title: Text("Aphasia"),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.flag),
          tooltip: 'Change language',
          onPressed: () {
          },
        ),
        IconButton(
          icon: const Icon(Icons.settings),
          tooltip: 'Settings',
          onPressed: () {
          },
        ),
      ],
    );
  }
}