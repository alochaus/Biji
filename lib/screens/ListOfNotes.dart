import 'package:biji/components/BijiAppBar.dart';
import 'package:biji/screens/CreateNote.dart';
import 'package:flutter/material.dart';

class ListOfNotes extends StatefulWidget {
  @override
  _ListOfNotesState createState() => _ListOfNotesState();
}

class _ListOfNotesState extends State<ListOfNotes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BijiAppBar(
        context: context,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.edit),
        onPressed: () {
          final Future<dynamic> future = pushCreateNote(context);
        },
      ),
    );
  }
}

Future<dynamic> pushCreateNote(context) =>
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return CreateNote();
    }));
