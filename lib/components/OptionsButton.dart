import 'package:biji/screens/Options.dart';
import 'package:flutter/material.dart';

class OptionsButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.more_vert),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return Options();
        }));
      },
    );
  }
}
