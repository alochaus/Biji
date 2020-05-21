import 'package:flutter/material.dart';

class ScreenListOfNotes extends StatefulWidget {
  @override
  _ScreenListOfNotesState createState() => _ScreenListOfNotesState();
}

class _ScreenListOfNotesState extends State<ScreenListOfNotes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Biji'),
      ),
    );
  }
}