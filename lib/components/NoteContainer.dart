import 'package:biji/models/Note.dart';
import 'package:flutter/material.dart';

class NoteContainer extends StatelessWidget {
  final Note note;
  final IconData icon;

  NoteContainer({
    @required this.note,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: note.color,
      child: ListTile(
        leading: icon != null ? Icon(icon) : null,
        title: Text(
          note.getTitle(),
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25.0,
          ),
        ),
      ),
    );
  }
}
