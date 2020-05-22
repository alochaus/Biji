import 'package:biji/screens/Options.dart';
import 'package:flutter/material.dart';

AppBar bijiAppBar({BuildContext context}) {
  return AppBar(
    title: Text(
      'Biji',
      style: TextStyle(fontSize: 25.0),
      textAlign: TextAlign.center,
    ),
    actions: (context != null)
        ? <Widget>[
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Options();
                }));
              },
            )
          ]
        : null,
  );
}
