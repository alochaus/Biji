import 'package:biji/components/BijiAppBar.dart';
import 'package:biji/components/NoteContainer.dart';
import 'package:biji/models/Note.dart';
import 'package:biji/screens/CreateNote.dart';
import 'package:flutter/material.dart';

class ListOfNotes extends StatefulWidget {
  @override
  _ListOfNotesState createState() => _ListOfNotesState();
}

class _ListOfNotesState extends State<ListOfNotes> {
  final List<Note> notes = List<Note>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: BijiAppBar(
        context: context,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.edit),
        onPressed: () {
          final Future<dynamic> future = pushCreateNote(context);
          future.then((note) {
            if (note.isValid()) {
              setState(() {
                notes.add(note);
              });
              scaffoldKey.currentState.showSnackBar(SnackBar(
                content: Text('Note successfully created!'),
                duration: Duration(seconds: 1, milliseconds: 500),
              ));
            } else if (!note.isValid()) {
              scaffoldKey.currentState.showSnackBar(SnackBar(
                content: Text('Note discarded.'),
                duration: Duration(seconds: 1, milliseconds: 500),
              ));
            }
          });
        },
      ),
      body: ListView.builder(
        itemCount: notes.length,
        itemBuilder: (context, index) {
          final Note note = notes[index];
          return NoteContainer(note: note);
        },
      ),
    );
  }
  
  Future<dynamic> pushCreateNote(context) =>
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return CreateNote();
      }));
}
