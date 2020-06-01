import 'package:biji/models/Note.dart';
import 'package:biji/theme/Theme.dart';
import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {
  final TextEditingController title;
  final TextEditingController content;

  SubmitButton({
    this.title,
    this.content,
  });

  @override
  Widget build(BuildContext context) {
    
    return RaisedButton(
      onPressed: () {
        if (title != null && content != null) {
          final Note note = Note(
            title: title.text,
            content: content.text,
          );
          Navigator.pop(context, note);
        } else {
          Navigator.pop(context);
        }
      },
      child: Text(
        'Submit',
        style: TextStyle(color: Color(TD_D_DarkYellow)),
      ),
      color: Color(TD_D_DarkBlue),
    );
  }
}
