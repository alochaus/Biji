import 'package:biji/screens/ListOfNotes.dart';
import 'package:biji/theme/theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(Biji());

class Biji extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Biji',
      theme: theme(),
      home: ListOfNotes()
    );
  }
}